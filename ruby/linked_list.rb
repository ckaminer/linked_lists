require "./node"

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def count
    if empty?
      0
    else
      count = 1
      current_node = head
      until current_node.next_node == nil
        current_node = current_node.next_node
        count += 1
      end
      count
    end
  end

  def append(data)
    new_node = Node.new(data)
    empty? ? @head = new_node : tail.next_node = new_node
  end

  def tail
    current_node = head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node
  end

  def empty?
    head.nil?
  end
end
