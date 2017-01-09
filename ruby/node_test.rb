require 'minitest/autorun'
require 'minitest/pride'
require './node'

class NodeTest < Minitest::Test
  def test_node_has_data
    node = Node.new("tiger")
    assert_equal "tiger", node.data
  end

  def test_node_has_next_node
    n1 = Node.new("rocket")
    n2 = Node.new("tiger")
    n1.next_node = n2
    assert_equal n2, n1.next_node
    assert_equal "tiger", n1.next_node.data
  end

  def test_node_has_next_node_on_init
    n2 = Node.new("tiger")
    n1 = Node.new("rocket", n2)
    assert_equal n2, n1.next_node
  end
end
