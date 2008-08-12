require File.dirname(__FILE__) + '/../test_helper'
class ScratchTest < Test::Unit::TestCase
  
  def test_holder
    Powncer::Authentication::Basic.connect!
    link = Powncer::Link.new({:body => "", :to => :public, :url =>"http://google.com"})
    assert link.save
  end
end