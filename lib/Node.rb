class Node
  attr_accessor :next
  attr_reader :value

  # Creates a node with the given value, and with
  # a "pointer" to the next node which is set externally
  def initialize(value)
    @value = value
    @next = nil
  end
end