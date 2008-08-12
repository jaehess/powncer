require 'test/unit'
require 'rubygems'
require 'mocha'
require 'redgreen'
require 'flexmock/test_unit'

$: << File.join(File.dirname(__FILE__), '..', 'lib')
require 'powncer'

Dir.glob(File.join(File.dirname(__FILE__), 'examples', '*_examples.rb')).each{|f| require f}

class Test::Unit::TestCase
  TEST_LIVE = false
  include Powncer
  
  def teardown
    Powncer.disconnect!
  end
  
end

class String
  def mock_connection(response)
    Powncer::Connection.any_instance.stubs(:get).with(self).returns(response) unless Test::Unit::TestCase::TEST_LIVE
  end
  
  def mock_auth_connection(response)
    Powncer::Authentication::Basic.any_instance.stubs(:get).with(self).returns(response) unless Test::Unit::TestCase::TEST_LIVE
  end
  
  def mock_post(response, params)
    Powncer::Authentication::Basic.any_instance.stubs(:post).with(self, params).returns(response) unless Test::Unit::TestCase::TEST_LIVE
  end
end