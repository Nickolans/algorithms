import Foundation

extension Solution {
    public func firstUniqChar(_ s: String) -> Int {
        let rArr = Array(s)
        let lArr = Array(s.description.reversed())
        
        for (_, ch) in rArr.enumerated() {
            if let right = rArr.firstIndex(of: ch), let left = lArr.firstIndex(of: ch) {
                if (0 - right) == (left - (rArr.count - 1)) {
                    return right
                }
            }
        }
        
        return -1
    }
}
