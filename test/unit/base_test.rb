require File.dirname(__FILE__) + '/../test_helper'

class BaseTest < Test::Unit::TestCase
  
  def test_error_thrown
    bad_url = '/note_lists/zzzzzzz.json?filter=public'
    bad_url.mock_connection(example_error)
    assert_raises Powncer::WebServiceError do 
      Base.request(bad_url)
    end
  end
  
end