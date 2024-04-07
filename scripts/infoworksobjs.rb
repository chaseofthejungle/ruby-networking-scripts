# Retrieve the open network and open a transaction
mynet = WSApplication.current_network
mynet.transaction_begin

nodeA = mynet.new_row_object('wn_node')
nodeA.id = "nodeA"
nodeA.x = 30
nodeA.y = 75
nodeA.write

nodeB = mynet.new_row_object('wn_node')
nodeB.id = "nodeB"
nodeB.x = 25
nodeB.y = 80
nodeB.write

pipe = mynet.new_row_object('wn_pipe')
pipe.us_node_id = "nodeA"
pipe.ds_node_id = "nodeB"
pipe.link_suffix = 1
pipe.bends = [20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80] # 4 vals corresponding to nodes A and B are in this data
pipe.write

mynet.transaction_commit # Network modifications confirmed
