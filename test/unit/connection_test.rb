require File.dirname(__FILE__) + '/../test_helper'

class ConnectionTest < Test::Unit::TestCase
  
  def test_creating_a_connection
    connection = Connection.new
    assert_not_nil connection
    assert_equal "http://api.pownce.com/2.0", connection.url
    assert !connection.authenticated
  end
  
end