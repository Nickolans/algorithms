import Foundation

extension Solution {
    // Passes but too slow
    func search1(_ nums: [Int], _ target: Int) -> Int {
        
        if let index = nums.firstIndex(of: target) {
            return index
        }
        
        return -1
    }
    
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        for (index, num) in nums.enumerated() {
            if num == target {
                return index
            }
        }
        
        return -1
    }
}
