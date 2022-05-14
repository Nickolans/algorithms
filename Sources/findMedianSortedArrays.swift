import Foundation

extension Solution {
    public func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        var median: Double
        
        // 1. Create new combined array
        var temp = nums1
        temp.append(contentsOf: nums2)
        
        // 2. Sort
        temp.sort()
        
        if temp.count == 1 {
            return Double(temp.first!)
        }
        
        // 3. Find median
        if (temp.count % 2 == 0) {
            // Even
            median = (Double(temp[(temp.count - 1) / 2]) + Double(temp[((temp.count - 1) / 2) + 1])) / 2
        } else {
            // Odd
            median = Double(temp[((temp.count - 2) / 2) + 1])
        }
        
        return median
    }
}
