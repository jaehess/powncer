require File.dirname(__FILE__) + '/../test_helper'

class AuthenticationTest < Test::Unit::TestCase
  
  def test_authentication_basic_header
    sig = Authentication::Basic::Header.new("powncertest", "powncertest")
    assert_equal "Basic #{example_auth_sig}", sig
  end
  
  def test_authentication_connection
    connection = Authentication::Basic.connect!
    assert_equal 1, Powncer.connections.length   
    "/users/jaehess.json".mock_auth_connection(example_profile_for)
    "/note_lists/jaehess.json?filter=notes".mock_auth_connection(auth_example_notes_for)
    j = User.find('jaehess')
    assert_equal 20, j.notes.length
  end
  
  def test_clear_authentication_connections
    connection = Authentication::Basic.connect!
    assert_not_nil Powncer.connections
    assert_equal 1, Powncer.connections.length
    assert_not_nil Powncer.connections[0].options
    Powncer.disconnect!
    assert_equal [], Powncer.connections
  end
  
end