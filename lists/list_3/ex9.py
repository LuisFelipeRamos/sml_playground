class Node:
    def __init__(self):
        self.n = None
        self.e = ""
    
    def __str__(self):
        return self.e

class Stack:
    def __init__(self):
        self.head = Node()
    
    def add(self, e):
        curr = self.head
        while curr.n != None:
            curr = curr.n
        new_node = Node()
        new_node.e = e
        curr.n = new_node
    
    def remove(self):
        curr = self.head
        while curr.n.n != None:
            curr = curr.n
        r = curr.n
        curr.n = None
        return r
    
    def isNotEmpty(self):
        return self.head.n != None
    

s = Stack ()
s . add ( " Baltimore " )
s . add ( " Lord " )
s . add ( " Sir " )
s . isNotEmpty ()

while ( s . isNotEmpty () ) :
    print ( s . remove () )