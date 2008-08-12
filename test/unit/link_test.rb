require File.dirname(__FILE__) + '/../test_helper'

class LinkTest < Test::Unit::TestCase
  
  def setup
    authorize
  end
  
  def test_no_url_throws_error
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    
    assert_raises RequirementMissing do 
      Link.new
    end
    assert_raises RequirementMissing do 
      Link.new({:url => "foo"})
    end
    assert_nothing_raised do 
      Link.new({:url => "http://test"})
    end
  end
  
  def test_new_link_creation
    lnk = Link.new(test_params.merge!({:to => :all}))
    assert_equal test_params[:body], lnk.body
    assert_equal test_params[:url], lnk.link
    assert_equal :all, lnk.to
  end
  
  def test_link_create
    "/users/powncertest.json".mock_auth_connection(example_profile_for_powncertest)
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    "/send/link.json".mock_post(example_post_link_response, test_params.merge!({:to => "friend_171628"}))
    lnk = Link.create(test_params)
    assert_equal test_params[:body], lnk.body
    assert_equal test_params[:url], lnk.link
    assert_kind_of Powncer::Link, lnk
  end
  
  private
  
  def authorize; Authentication::Basic.connect!; end
  
  def test_params
    {:url => "http://powncer.rubyforge.org", :body => "Foo", :to => "powncertest"}
  end
  
end