import Foundation

extension Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let digi  = Array(digits).map { Int(String($0))! }
        
        let phonebook: [Int: [String]] = [0: [],
                                          1: [],
                                          2: ["a", "b", "c"],
                                          3: ["d", "e", "f"],
                                          4: ["g", "h", "i"],
                                          5: ["j", "k", "l"],
                                          6: ["m", "n", "o"],
                                          7: ["p", "q", "r", "s"],
                                          8: ["t", "u", "v"],
                                          9: ["w", "x", "y", "z"]]
        
        if digi.count == 1 {
            return phonebook[digi.first!]!
        }
        
        var possibilities: [String] = []
        var result: [String] = []
        
        for dig in digi {
            if let contents = phonebook[dig] {
                possibilities.append(contentsOf: contents)
            }
        }
        
        print(possibilities)
        for (idx1, letter) in possibilities.enumerated() {
            for (idx2, letterx) in possibilities.enumerated() {
                // Perform checks
                
                // 1. Not in same group
                if (getGroup(phonebook, value: letter) != getGroup(phonebook, value: letterx)) &&
                    (!result.contains(letter + letterx)) &&
                    (!result.contains(letterx + letter)) {
                    result.append(letter + letterx)
                    }
            }
        }
        
        return result
    }
    
    private func getGroup(_ dict: [Int: [String]], value: String) -> Int {
        for key in Array(dict.keys) {
            if dict[key]!.contains(value) {
                return key
            }
        }
        
        return -1
    }
}
