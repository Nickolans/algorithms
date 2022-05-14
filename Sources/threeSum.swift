import Foundation

extension Solution {
    
    // MARK: Version 1 - ISSUE: Too slow
    public func threeSum1(_ nums: [Int]) -> [[Int]] {
        
        var sols: [[Int]] = []
        for (index1, num1) in nums.enumerated() {
            for (index2, num2) in nums.enumerated() {
                for (index3, num3) in nums.enumerated() {
                    if (index1 != index2 && index2 != index3 && index3 != index1) && ((num1 + num2 + num3) == 0) {
                        
                        let arr = [num1, num2, num3].sorted()
                        
                        if !sols.contains(arr) {
                            sols.append(arr)
                        }
                    }
                }
            }
        }
        
        return sols
    }
    
    // MARK: Version 2
//    public func threeSum(_ nums: [Int]) -> [[Int]] {
//
//        for num in nums {
//
//        }
//
//
//    }
}
