require './lib/LinkedList'
require './lib/Node'

list = LinkedList.new

node_1 = Node.new(1)
node_2 = Node.new(2)
node_3 = Node.new(3)
node_4 = Node.new(4)

list.append(node_1)
puts list.size
list.append(node_2)
puts list.size
list.prepend(node_4)
puts list.size

p list