import Foundation
import Darwin
let solution = Solution()

extension Solution {
    
    // MARK: Version 1 - Works but it too slow
    public func lengthOfLongestSubstring1(s: String) -> Int {
        let client = Array(s).map { String($0) }
        
        // 1. Check if string only has 1 character
        if client.count == 1 {
            return 1
        }
        
        var detectSubstrings: [[String]] = []
        var index = 0
        
        while (index != (client.count - 1)) {
            for idx in index..<client.count {
                
                if detectSubstrings.indices.contains(index) {
                    if !detectSubstrings[index].contains(client[idx]) {
                        detectSubstrings[index].append(client[idx])
                    } else {
                        index += 1
                    }
                } else {
                    print("here")
                    detectSubstrings.append([client[idx]])
                }
            }
            
            
        }
        
        return detectSubstrings.max { $0.count < $1.count }!.count
    }
    
    // MARK: Version 2
    public func lengthOfLongestSubstring(s: String) -> Int {
        let client = Array(s).map { String($0) }
        
        // 1. Check if string only has 1 character
        if client.count == 1 || client.count == 0 {
            return client.count
        }
        
        
        
        var detectSubstrings: [[String]] = []
//
//        for letter in client {
//            detectSubstrings.map {  }
//        }
        s.split
//        var index = 0
        
//        while (index != (client.count - 1)) {
//            for idx in index..<client.count {
//
//                if detectSubstrings.indices.contains(index) {
//                    if !detectSubstrings[index].contains(client[idx]) {
//                        detectSubstrings[index].append(client[idx])
//                    } else {
//                        index += 1
//                    }
//                } else {
//                    print("here")
//                    detectSubstrings.append([client[idx]])
//                }
//            }
//
//
//        }
        
        return detectSubstrings.max { $0.count < $1.count }!.count
    }
}

extension Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var pivot = 0
        
        
        
        for (idx, _) in nums.enumerated() {
            var left = 0
            var right = 0
            
            if idx != 0 {
                // Find left
            }
            
            if idx != (nums.count - 1) {
                // Find right
                right = nums[(idx + 1)...(nums.count - 1)].reduce(0, { $0 + $1 })
            }
        }
        
        return pivot
    }
}

extension Solution {
    func caesarCipher(s: String, k: Int) -> String {
        // 1. Create original alphabet
        let alphabet: [String] = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
        var shiftedAlphabet: [String] = alphabet
        
        // 2. Shift alphabet
        for (index, character) in alphabet.enumerated() {
            let x = index - k
            let newIndex = (x < 0) ? (x + 26) : x
            shiftedAlphabet[newIndex] = character
        }
        
        // 3. Replace characters
        var result = s.map { String($0) }
        
        for (index, character) in result.enumerated() {
            
            // 1. Get index of letter
            if let i = alphabet.firstIndex(of: character) {
                result[index] = shiftedAlphabet[i]
            } else {
                if let i = alphabet.firstIndex(of: character.lowercased()) {
                    result[index] = shiftedAlphabet[i].uppercased()
                }
            }
        }
        
        return result.reduce("", +)
    }
}

extension Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        
        // 1. Flatten
        
            
        return nil
    }
}

