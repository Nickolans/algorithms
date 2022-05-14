import Foundation

extension Solution {
    func sortColors(_ nums: inout [Int]) {
        var colors: [Int: Int] = [:]
        var result: [Int] = []
        
        for num in nums {
            if colors[num] != nil {
                colors[num]! += 1
            } else {
                colors[num] = 1
            }
        }
        
        for key in Array(colors.keys.sorted()) {
            for _ in 0..<colors[key]! {
                result.append(key)
            }
        }
        nums = result
        print(result)
    }
}
