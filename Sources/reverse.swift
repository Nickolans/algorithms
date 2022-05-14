import Foundation

extension Solution {
    func reverse(_ x: Int) -> Int {
        
        // 1. Check if negative
        var isNegative = false
        var y = x
        
        if (x < 0) {
            isNegative.toggle()
            y *= -1
        }
        
        // 2. Map integers to array
        let nums: [Int] = y.description.map { Int(String($0))! }
        
        // 3. Reverse String
        var reverseString = ""
        var index = nums.count - 1
        
        while (index != -1) {
            reverseString.append("\(nums[index])")
            index -= 1
        }

        // 4. Convert to integer
        if let completed_num = Int(reverseString) {
            let result = isNegative ? (completed_num * -1) : completed_num
            
            
            // 5. Check if within Int32 bounds
            if (result <= Int32.min) || (result >= Int32.max) {
                return 0
            } else {
                return result
            }
        }
        
        return 0
     }
}
