import Foundation

extension Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var current = head
        var prev: ListNode?
        
        while (current != nil) {
            // 1. Store next node
            let temp_next = current?.next
            
            // 2. Flip next node to previous node
            current?.next = prev
            
            // 3. Set previous node as current node
            prev = current
            
            // 4. The current node is now the next node
            current = temp_next
        }
        
        return prev
    }
}

