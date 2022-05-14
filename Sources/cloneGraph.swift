import Foundation

public class Node {
    public var val: Int
    public var neighbors: [Node?]
    public init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}

extension Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        
        guard let node = node else {
            return nil
        }
        
        // 1. Create new node with current node value
        let newNode = Node(node.val)
        
        // 2. Establish new nodes neighbors
        var newConnection = newNode
        var current = node
        
        while (current != nil) {
            for n in current.neighbors {
                newConnection.neighbors.append(n)
            }
        }
        
        return newNode
    }
}
