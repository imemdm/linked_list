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
end