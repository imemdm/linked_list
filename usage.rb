require './lib/LinkedList'
require './lib/Node'

list = LinkedList.new

node_1 = Node.new(1)
node_2 = Node.new(2)
node_3 = Node.new(3)

list.append(node_1)
list.append(node_2)
list.append(node_3)

p list