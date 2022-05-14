import Foundation

class MinStack {
    
    private var stack: [Int] = []
    
    init() {
        //
    }
    
    func push(_ val: Int) {
        self.stack.insert(val, at: 0)
    }
    
    func pop() {
        self.stack.removeFirst()
    }
    
    func top() -> Int {
        if let first = stack.first {
            return first
        }
        
        return 0
    }
    
    func getMin() -> Int {
        
        if let least = stack.min() {
            return least
        }
        
        return 0
    }
}
