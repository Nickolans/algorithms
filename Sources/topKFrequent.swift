import Foundation

extension Solution {
    public func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var wordFrequency: [String: Int] = [:]
        let whords = words.sorted(by: { $0.count < $1.count })
        
        // 1. Find word counts
        for word in whords {
            if (wordFrequency[word] != nil) {
                wordFrequency[word]! += 1
            } else {
                wordFrequency[word] = 1
            }
        }
        
        // 2. Sort - If value is bigger, if not compare key size
        let sorted = wordFrequency.sorted(by: { ($0.value == $1.value) ? ($0.key < $1.key) : ($0.value > $1.value) })
        
        // 3. Turn dict keys into string array
        let keys = sorted.map( { String($0.key) })
        
        // 4. Return subsequence of keys
        return keys[..<k].map { String($0) }
    }
}
