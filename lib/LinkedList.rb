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
  def contains?(data)
    result = false
    node = @head
    loop do
      if node.value == data
        result = true
        break
      end
      break if node.next.nil?
      node = node.next
    end
    result
  end

  # Returns the index of the node containing data,
  # or nil if not found
  def find(data)
    result = nil
    count = 0
    node = @head
    loop do
      if node.value == data
        result = count
        break 
      end
      break if node.next.nil?
      count += 1
      node = node.next
    end
    result
  end

  # Represents LinkedList objects as strings
  def to_s
    string = ""
    node = @head

    if @head.nil?
      string = "nil"
    else
      loop do
        string += "#{node.to_s} -> "
        if node.next.nil?
          string += "nil"
          break
        end
        
        node = node.next
      end
    end
    string
  end

  # Inserts node at the given index
  def insert_at(index, node)
    if index >= self.size
      raise "Index out of range"
    else
      current = @head
      prev = @head
      count = 0
      loop do
        break if count == index
        prev = current
        current = current.next
        count += 1
      end
      
      temp_next = prev.next
      
      if count == 0
        self.prepend(node)
      else
        prev.next = node
      end

      node.next = temp_next
    end
  end
end