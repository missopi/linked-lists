# frozen_string_literal: true

# will represent the full list
class LinkedList
  def initialise
    @head = nil
  end

  # add new node to end
  def append(value)
    tail.next = Node.new(value)
    end
  end

  # add new node to beginning
  def prepend(value)
    @head = Node.new(value)
  end

  # total number of nodes
  def size
  end

  # returns first node
  def head
  end

  # return last node
  def tail
  end

  # return node at given index
  def at(index)
  end

  # remove last element
  def pop 
  end

  # returns true if value in list
  def contains?(value)
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
