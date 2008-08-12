require File.dirname(__FILE__) + '/../test_helper'

class EventTest < Test::Unit::TestCase
  
  def setup
    authorize
  end
  
  def test_no_requirements_throws_error
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    
    assert_raises RequirementMissing do 
      Event.new
    end
    assert_nothing_raised do 
      Event.new(test_params)
    end
  end
  
  def test_new_event_creation
    event = Event.new(test_params.merge!({:to => :all}))
    assert_equal test_params[:name], event.name
    assert_equal :all, event.to
  end
  
  def test_event_create
    "/send/send_to.json".mock_auth_connection(auth_example_send_to_for)
    "/send/event.json".mock_post(example_post_event_response, test_params.merge!({:to => :public}))
    event = Event.create(test_params)
    assert_equal test_params[:name], event.name
    assert_equal test_params[:location], event.location
    assert_equal test_params[:date], event.date
    assert_kind_of Powncer::Event, event
  end
  
  private
  
  def authorize; Authentication::Basic.connect!; end
  
  def test_params
    {:name => "Foo", :location => "Bar", :date => "2008-01-16 21:00:00"}
  end
  
end