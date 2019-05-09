class Tree
  def initialize(node, value)
    @root =  Node.new(value)
  end

  def add_node(node)
  end
end

class Node
  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def insert_left(value)
    if @left
      @left.insert_left(value)
    else
      @left = Node.new(value)
    end
  end

  def insert_right(value)
    # ditto logic as #insert_left
  end
end


n1 = Node.new(1)
n2 = n1.insert_left(2)
n3 = n1.insert_left(3)
puts n1.inspect
puts n2.inspect
