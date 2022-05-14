import Foundation

extension Solution {
    public func missingNumber(_ nums: [Int]) -> Int {
        let count = nums.count
        let sorted = nums.sorted()
        
        var missingNum = -1
        
        for (index, num) in sorted.enumerated() {
            if ((index) != num) {
                missingNum = (index)
                break
            }
        }
        
        return missingNum == -1 ? count : missingNum
    }
}
