require 'minitest/autorun'
require 'minitest/pride'
require './linked_list'

class LinkedListTest < Minitest::Test
  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test_it_starts_with_nil_head
    assert_equal nil, LinkedList.new.head
  end

  def test_it_starts_with_zero_elements
    assert_equal 0, list.count
  end

  def test_append_to_empty_list_becomes_head_node
    list.append("tiger")
    assert_equal Node, list.head.class
    assert_equal "tiger", list.head.data
  end

  def test_can_count_single_node_length
    list.append("tiger")
    assert_equal 1, list.count
  end

  def test_can_find_tail_on_single_node
    list.append("tiger")
    assert_equal "tiger", list.tail.data
  end

  def test_append_to_non_empty_list_becomes_tail
    list.append("rocket")
    list.append("tiger")
    assert_equal "rocket", list.head.data
    assert_equal "tiger", list.head.next_node.data
    assert_equal "tiger", list.tail.data
  end

  def test_can_count_length_greater_than_one
    list.append("rocket")
    list.append("tiger")
    list.append("viking")
    assert_equal 3, list.count
  end
end
