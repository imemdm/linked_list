require './lib/LinkedList'
require './lib/Node'

list = LinkedList.new

node_1 = Node.new(1)
node_2 = Node.new(2)
node_3 = Node.new(3)
node_4 = Node.new(4)

list.append(node_1)
list.append(node_2)
list.append(node_3)

p list.to_s

list.remove_at(1)

p list.to_s