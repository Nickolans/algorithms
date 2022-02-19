import Foundation

extension Solution {
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var result: [Int] = []
        
        for (_idx, _num) in nums.enumerated() {
            for (idx, num) in nums.enumerated() {
                if (_idx != idx) && ((_num + num) == target) {
                    result = [_idx, idx]
                }
            }
        }
        
        return result
    }
}
