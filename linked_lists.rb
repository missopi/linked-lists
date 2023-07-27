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
    return nil if @head.nil?

    @head.value
  end

  # return value of last node
  def tail
    return nil if @head.nil?

    node = @head
    node = node.next_node until node.next_node.nil?
    node.value
  end

  # return node value at given index
  def at(index)
    return nil if @head.nil?

    node = @head
    index.times do
      node = node.next_node
    end
    node.value
  end

  # remove last element
  def pop
    node = @head
    return nil if node.nil?

    until node.next_node.nil?
      previous_node = node
      node = node.next_node
    end
    previous_node.next_node = nil
    previous_node
  end

  # remove value at given index
  def remove_at(index)
    return nil if @head.nil?
    
    if index.zero?
      node = @head
      @head = @head.next_node
      node
    end
    
  end

  # returns true if value in list
  def contains?(value)
    node = @head
    found = false
    until node.nil? || found
      if node.value == value
        found = true
      else
        node = node.next_node
      end
    end
    found
  end

  # returns index of node containing value
  def find(value)
    node = @head
    index = 0
    until node.nil? || value == node.value
      node = node.next_node
      index += 1
    end
    index
  end

  # list of values represented as string
  def to_s
    'nil' if @head.nil?

    node = @head
    list = ''
    until node.nil?
      list += "#{node.value} -> "
      node = node.next_node
    end

    "#{list}nil"
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

test = LinkedList.new
test.append('value1')
test.append('value2')
test.append('value3')
p test.to_s
test.prepend('value4')
test.prepend('value5')
p test.to_s
p test.pop
p test.to_s
p test.contains?('value2')
p test.find('value1')
p test.head
p test.tail
p test.at(1)
p test.size
