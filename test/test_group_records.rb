require 'minitest/autorun'
require_relative 'test_helper'

class FakePost < ActiveRecord::Base
end

class TestGroupRecords < MiniTest::Spec
  def setup
    @post1 = FakePost.create(:title => 'First Post', :created_at => Time.now)
    @post2 = FakePost.create(:title => 'Second Post', :created_at => Time.now - 6000000)
    @post2 = FakePost.create(:title => 'Third Post', :created_at => Time.now - 4000000)
  end

  def test_number_of_keys_returned
    assert_equal(3, FakePost.all.group_by_month.keys.count)
    assert_equal(2, FakePost.all.group_by_year.keys.count)
  end
  
  def test_order_of_keys
    assert_equal('December 2013', FakePost.all.group_by_month.keys[0])
    assert_equal('January 2014', FakePost.all.group_by_month.keys[1])
    assert_equal('February 2014', FakePost.all.group_by_month.keys[2])
    
    assert_equal('2013', FakePost.all.group_by_year.keys[0])
    assert_equal('2014', FakePost.all.group_by_year.keys[1])
  end
end