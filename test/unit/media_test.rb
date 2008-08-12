require File.dirname(__FILE__) + '/../test_helper'

class MediaTest < Test::Unit::TestCase
  
  def setup
    authorize
  end
  
  def test_new_file
    file = Media.new({:to => "powncertest", :data => open(File.join(File.dirname(__FILE__), "1_1_TESTS")){|f| f.read}})
    assert file.save
  end
  
  private
  
  def authorize; Authentication::Basic.connect!; end
  
  def test_params
    {:name => "Foo", :location => "Bar", :date => "2008-01-16 21:00:00"}
  end
  
end