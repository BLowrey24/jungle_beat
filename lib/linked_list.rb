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
      current_node = head
        until current_node.next_node.nil?
          current_node = current_node.next_node
        end
      current_node.next_node = node
    end

    data
  end

  def count
    counter = 0
    current_node = head

    until current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end

    counter
  end

  def to_string
    current_node = head
    result = ""

    until current_node.nil?
      result += current_node.data + " "
      current_node = current_node.next_node
    end

    result.strip
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = head

    @head = new_node

    data
  end

  def insert(index, data)
    current_node = head
    new_node = Node.new(data)

    if index == 0
      new_node.next_node = head
      head = new_node
    else
      (index - 1).times do
        current_node = current_node.next_node
      end
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end

    data
  end

  def find(start, length)
    current_node = head
    result = ""

    start.times do
      current_node = current_node.next_node
    end

    length.times do
      result << current_node.data + " "
      current_node = current_node.next_node
    end

    result.strip
  end

  def includes?(data)
    current_node = head
    until current_node.nil?
      return true if current_node.data == data
      current_node = current_node.next_node
    end
    
    false
  end
end