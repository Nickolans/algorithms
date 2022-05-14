import Foundation

extension Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        if nums1.isEmpty || nums2.isEmpty {
            return []
        }
        
        var result: [Int] = []
        var num1Dict: [Int: Int] = [:]
        var num2Dict: [Int: Int] = [:]
        
        for num in nums1 {
            
            if num1Dict[num] != nil {
                num1Dict[num]! += 1
            } else {
                num1Dict[num] = 1
            }
        }
        
        for num in nums2 {
            if num2Dict[num] != nil {
                num2Dict[num]! += 1
            } else {
                num2Dict[num] = 1
            }
        }
        
        for num in nums1 {
            if num1Dict[num] != nil && num2Dict[num] != nil {
//                result.append(num1Dict[num] < num2Dict[num] ? )
            }
        }
        
        return result
        
    }
}
