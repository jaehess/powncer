require File.dirname(__FILE__) + '/../test_helper'
class UserTest < Test::Unit::TestCase
  
  def setup
    @user = User.new('jaehess')
  end
  
  def test_user_has_profile_attributes
    "/users/jaehess.json".mock_connection(example_profile_for)
    profile = @user.profile
    assert_equal "jaehess", profile.username
    assert_equal false, profile.is_pro?
    assert_equal 124992, profile.id
  end
  
  def test_user_friends_allocated_to_user_objects
    "/users/jaehess/friends.json".mock_connection(example_friends_for)
    assert_not_nil @user.friends
    assert_kind_of Array, @user.friends
    assert_kind_of Powncer::User, @user.friends[0]
  end
  
  def test_user_relationships_return_empty_when_empty
    "/users/jaehess/fans.json".mock_connection(example_fans_for)
    assert_not_nil @user.fans
    assert_kind_of Array, @user.fans
  end
  
  def test_user_finder_and_load_profile
    "/users/jaehess.json".mock_connection(example_profile_for)
    user = User.find('jaehess')
    assert_not_nil user
    assert_equal "jaehess", user.username
    assert_equal "Bloke", user.gender
  end
  
  def test_user_should_have_notes
    '/note_lists/jaehess.json?filter=notes'.mock_connection(example_public_notes_for)
    assert_kind_of Array, @user.notes
    assert_kind_of Powncer::Note, @user.notes.first
  end
  
  def test_user_has_send_to_list
    Authentication::Basic.connect!
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    assert_kind_of Hash, @user.send_to
    assert_kind_of Hash, User.send_to
    assert_equal @user.send_to, User.send_to
  end
  
end