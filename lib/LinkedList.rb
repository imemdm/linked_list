class LinkedList
  
  # Create a new empty Linked list
  def initialize
    @head = nil
  end

  # Adds a new node to the end of the list
  def append(node)
    if @head.nil?
      @head = node
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = node
    end
  end

  # Adds a new node to the start of the list
  def prepend(node)
    if @head.nil?
      @head = node
    else
      temp = @head
      @head = node
      @head.next = temp
    end
  end

  # Returns the total number of nodes in the list
  def size
    count = 0
    unless @head.nil?
      current = @head
      loop do
        count += 1
        break if current.next.nil?
        current = current.next
      end
    end
    
    count
  end

  # Returns the first node in the list
  def head
    @head
  end

  # Returns the last node in the list
  def tail
    node = @head
    loop do
      break if node.next.nil?
      node = node.next
    end
    node
  end

  # Returns the node at a given index
  def at(index)
    node = @head
    0.upto(index - 1) do |i|
      break if node.next.nil?
      node = node.next
    end
    node
  end

  # Removes the last element from the list
  def pop
    if self.size == 1
      @head = nil
    else
      node = @head
      prev = @head
      loop do
        if node.next.nil?
          prev.next = nil
          break
        end
        prev = node
        node = node.next
      end
    end
  end

  # Returns true if the passed value is in the list,
  # and otherwise returns false
  def contains?(val)
    result = false
    node = @head
    loop do
      if node.value == val
        result = true
        break
      end
      break if node.next.nil?
      node = node.next
    end
    result
  end
end