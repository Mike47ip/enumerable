# my_list_test.rb
require 'minitest/autorun'
require_relative '../my_list'

class MyListTest < Minitest::Test
  def setup
    @list = MyList.new(1, 2, 3, 4)
  end

  def test_all_method
    assert_equal(true, @list.all? { |e| e < 5 })
    assert_equal(false, @list.all? { |e| e > 5 })
  end

  def test_any_method
    assert_equal(true, @list.any? { |e| e == 2 })
    assert_equal(false, @list.any? { |e| e == 5 })
  end

  def test_filter_method
    assert_equal([2, 4], @list.filter(&:even?))
    assert_equal([1, 3], @list.filter(&:odd?))
  end
end
