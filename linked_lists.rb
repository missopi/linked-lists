# frozen_string_literal: true

# will represent the full list
class LinkedList
  def initialise
    @head = nil
  end

  # add new node to end
  def append(value)
    tail.next_node = Node.new(value)
  end

  # add new node to beginning
  def prepend(value)
    @head = Node.new(value)
  end

  # total number of nodes
  def size
    count = 0
    current_node = @head
    count += 1 until current_node.next_node.nil?
    count
  end

  # returns first node
  def head
    node = @head
    return node if node.first
  end

  # return last node
  def tail
    node = @head
    return node unless node.next_node
  end

  # return node at given index
  def at(index)
  end

  # remove last element
  def pop
    tail.delete
  end

  # returns true if value in list
  def contains?(value)
    return true if node(value) == value
  end

  # returns index of node containing value
  def find(value)
  end

  # list of values represented as string
  def to_s
  end
end

# represents a node in the linked list containing the value and the link to the next node
class Node
  attr_accessor :next_node
  attr_reader :value

  def initialise(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
