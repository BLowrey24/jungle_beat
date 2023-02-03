class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)

    if head.nil? 
      @head = node
    else
      tail.next_node = node
    end

    data
  end
end