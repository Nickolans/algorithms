import Foundation

extension Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        if nums1.isEmpty || nums2.isEmpty {
            return []
        }
        
        var result: [Int] = []
        
        for num in nums1 {
            if nums2.contains(num) && !result.contains(num) {
                result.append(num)
            }
        }
        
        return result
    }
}
