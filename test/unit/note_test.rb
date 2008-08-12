require File.dirname(__FILE__) + '/../test_helper'
class NoteTest < Test::Unit::TestCase
  
  def test_new_note_creation
    note = Note.new({:body => "Foo", :to => :all})
    assert_equal "Foo", note.body
    assert_equal :all, note.to
    
    authorize
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    note = Note.new({:body => "Foo"})
    assert_equal :public, note.to
  end
    
  def test_new_note_save_post
    authorize
    "/users/powncertest.json".mock_auth_connection(example_profile_for_powncertest)
    "/users/davidbenedic.json".mock_auth_connection(example_profile_for_david)
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    "/send/message.json".mock_post(example_post_note_response, {:body => "Foo", :to => "friend_171628"})
    note = Note.new({:body => "Foo", :to => "powncertest"})
    assert note.save
    assert_equal "Foo", note.body
  end
  
  def test_note_create_to_public
    authorize
    "/users/powncertest.json".mock_auth_connection(example_profile_for_powncertest)
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    "/send/message.json".mock_post(example_post_note_response, {:body => "Foo", :to => :public })
    note = Note.create({:body => "Foo"})
    assert_kind_of Powncer::Note, note
    assert_equal "Foo", note.body
  end
  
  def test_note_throws_error_when_friends_are_invalid
    authorize
    "/users/leahculver.json".mock_auth_connection(example_profile_for_leah)
    "/users/powncertest.json".mock_auth_connection(example_profile_for_powncertest)
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    "/send/message.json".mock_post(example_post_note_response, {:body => "Foo", :to => "friend_171628"})
    assert_raises Powncer::InvalidFriend do 
      Note.create({:body => "Foo", :to => "leahculver"})
    end
    assert_nothing_raised do 
      @note = Note.create({:body => "Foo", :to => "powncertest"})
    end
  end
  
  def test_public_notes_list
    '/note_lists.json'.mock_connection(example_public_notes)
    @notes = Note.find(:public)
    assert_not_nil @notes
    assert_kind_of Array, @notes
    assert_kind_of Powncer::Note, @notes.first
    assert_equal 20, @notes.length
  end

  def test_public_notes_list_limit
    limit = 50
    "/note_lists.json?limit=#{limit}".mock_connection(example_public_notes(limit))
    @notes = Note.find(:public, {:limit => limit})
    assert_not_nil @notes
    assert_equal limit, @notes.length
  end
  
  def test_public_notes_list_page
    "/note_lists.json?page=1".mock_connection(example_public_notes(20, 1))
    @notes = Note.find(:public, {:page => 1})
    assert_not_nil @notes
    assert_equal 20, @notes.length
  end

  def test_public_note_find
    note = example_note
    "/notes/#{note[:id]}.json".mock_connection(example_public_note_for)
    @note = Note.find(note[:id])
    assert_kind_of Powncer::Note, @note
    assert_equal note[:body], @note.body
  end
  
  def test_public_note_sender_is_user
    note = example_note
    "/notes/#{note[:id]}.json".mock_connection(example_public_note_for)
    @note = Note.find(note[:id])
    assert_kind_of Powncer::User, @note.sender
  end
  
  def test_public_note_link_is_not_hash
    "/users/jaehess.json".mock_connection(example_profile_for)
    '/note_lists/jaehess.json?filter=notes'.mock_connection(example_public_links_for)
    user = User.find('jaehess')
    assert_not_nil user
    assert_not_nil user.notes
    assert_equal "http://www.rubyforge.org/projects/powncer", user.notes.first.link
  end
  
  def test_chaining_notes_on_user_profile_find
    "/users/jaehess.json".mock_connection(example_profile_for)
    "/note_lists/jaehess.json?filter=notes".mock_connection(example_public_notes_for)
    @notes = User.find('jaehess').notes
    assert_not_nil @notes
    assert_kind_of Array, @notes
  end

  [:links, :messages, :events].each do |type|
    class_eval(<<-EVAL, __FILE__, __LINE__)
      def test_filter_public_#{type}
        "/note_lists.json?type=#{type}".mock_connection(example_public_#{type})
        #{type} = Note.find(:public, {:type => "#{type}"})
        assert_not_nil #{type}
        assert_kind_of Array, #{type}
        assert_equal 20, #{type}.length
        assert_kind_of Powncer::Note, #{type}.first
        assert_equal "#{type}", #{type}.first.type + "s"
      end
    EVAL
  end

  private
  
  def authorize; Authentication::Basic.connect!; end
  
  def example_note
    return {
      :id => 1437687,
      :body => "Powncer Ruby Gem released soon (with API 2.0 support)"
    }
  end
  
end