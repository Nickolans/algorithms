import Foundation

extension Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        
        if (nums.count == 1) {
            return nums
        } else if (nums.isEmpty) {
            return []
        }
        
        var frequency: [Int: Int] = [:]
        
        // 1. Find frequency
        for num in nums {
            if frequency[num] != nil {
                frequency[num]! += 1
            } else {
                frequency[num] = 1
            }
        }
        
        // 2. Sort values
        let sortedByFrequency = frequency.sorted(by: { $0.value < $1.value })
        let sortedWithSimilarities = sortedByFrequency.sorted(by: { $0.value == $1.value ? $0.key > $1.key : false })
        
        var arr: [Int] = []
        
        sortedWithSimilarities.map { arr.append(contentsOf: repeatElement($0.key, count: $0.value)) }
         
        // 3. Return array
        return arr
    }
}
