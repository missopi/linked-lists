# frozen_string_literal: true

# will represent the full list
class LinkedList
  def initialize
    @head = nil
  end

  # add new node to end
  def append(value)
    new_node = Node.new(value) # make new node

    if @head.nil?
      @head = new_node # if no nodes, first node is new node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = current
    end
  end

  # add new node to beginning
  def prepend(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head
      @head = new_node
      @head.next_node = current
    end
  end

  # total number of nodes
  def size
    count = 0

    unless @head.nil?
      node = @head
      until node.next_node.nil?
        count += 1
        node = node.next_node
      end
    end
    count
  end

  # returns value of first node
  def head
    @head.value
  end

  # return value of last node
  def tail
    node = @head
    node.value if node.next_node.nil?
  end

  # return node at given index
  def at(index)
    node = @head
    index.times do
      node = node.next_node
    end
    node
  end

  # remove last element
  def pop
    tail.delete
  end

  # returns true if value in list
  def contains?(value)
    return true if node.value == value
  end

  # returns index of node containing value
  def find(value)
    return index if node.value == value
  end

  # list of values represented as string
  def to_s
    node = @head
    until node.nil?
      puts "#{node.node}"
      node = node.next_node
    end
    puts 'end'
  end
end

# represents a node in the linked list containing the value and the link to the next node
class Node
  attr_accessor :next_node
  attr_reader :value

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end
