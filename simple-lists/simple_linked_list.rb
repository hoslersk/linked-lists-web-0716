class Node

  attr_accessor :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end

  # def next
  #   @next
  # end
  #
  # def data
  #   @data
  # end

end

# node = Node.new(4, next_node)
# next_node = Node.new(13, last_node)
# last_node = Node.new(20, nil)
# node.next.next == last_node
# node.next.next.next == nil

class LinkedList

  attr_accessor :head#, :counter

  def initialize(data)
    # binding.pry
    # @counter = 0
    @head = Node.new(data)
  end

  # def index_at(index)
  #   node = self.head
  #   counter = 0
  #   while counter <= index do
  #     if node.next == nil
  #       if counter == index
  #         return node.next
  #       else
  #         return node.data
  #       end
  #     else
  #       counter += 1
  #       node = node.next
  #     end
  #   end
  # end

  def index_at(index)
    node = self.head
    counter = 0
    while counter < index do
      if node.next == nil
        return node.next
      else
        counter += 1
        node = node.next
      end
    end
    node.data
  end

  def insert_at_index(index, data)
    node = self.head
    counter = index - 1
    while counter > 0 do
      if !!node.next
        node = node.next
        counter -= 1
      elsif !node.next
        nil_node = Node.new(nil)
        node.next = nil_node
        node = nil_node
        counter -= 1
      end
    end
    next_node = node.next
    node.next = Node.new(data, next_node)
  end

  def unshift(data)
    node = self.head
    self.head = Node.new(data, node)
  end

  def push(data)
    node = self.head
    # counter = 0
    until !node.next
      node = node.next
    end
    node.next = Node.new(data)
  end

end
