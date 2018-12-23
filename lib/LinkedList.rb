class LinkedList
  
  # Create a new empty Linked list
  def initialize
    @head = nil
  end

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
end