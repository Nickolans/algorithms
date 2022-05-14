import Foundation

extension Solution {
    
    // MARK: Version 1 - works but too slow
    func validPalindrome1(_ s: String) -> Bool {
        
        var isPalindrome = false
        
        // 1. Check if palindrome
        if (s.description == String(s.description.reversed())) {
            return true
        } else {
            // 2. Remove letters and see if palindrome
            for (index, _) in s.enumerated() {
                // 1. Remove letter at index
                var temp = s
                temp.remove(at: temp.index(temp.startIndex, offsetBy: index))
                
                // 2. Check if palindrome
                if (temp.description == String(temp.description.reversed())) {
                    isPalindrome = true
                    break
                }
            }
        }
        
        return isPalindrome
    }
    
    // MARK: Version 2 - works but too slow
    func validPalindrome2(_ s: String) -> Bool {
        
        var left = 0
        var right = s.count - 1
        
        // 1. Check if palindrome
        while (left < right) {
            if (s[s.index(s.startIndex, offsetBy: right)] != s[s.index(s.startIndex, offsetBy: left)]) {
                // Try both deletions
                // 1. Left
                var tempRight = s, tempLeft = s
                tempRight.remove(at: s.index(s.startIndex, offsetBy: right))
                tempLeft.remove(at: s.index(s.startIndex, offsetBy: left))
                
                return (tempRight.description == String(tempRight.description.reversed())) || (tempLeft.description == String(tempLeft.description.reversed()))
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
    
    // MARK: Version 3 - SUCCESS
    func validPalindrome(_ s: String) -> Bool {
        
        // Turn string into array
        let v = Array(s)
        
        var left = 0
        var right = v.count - 1
        
        // 1. Check if palindrome
        while (left < right) {
            if (v[left] != v[right]) {
                // Try both deletions
                // 1. Left
                var tempRight = v, tempLeft = v
                tempRight.remove(at: right)
                tempLeft.remove(at: left)
                
                return (tempRight == tempRight.reversed()) || (tempLeft == tempLeft.reversed())
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
}
