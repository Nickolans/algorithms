import Foundation

extension Solution {
    
    // V0
    public func romanToInt(_ s: String) -> Int {
        
        // 1. Initial Value
        var result = 0
        var previousChar: String = ""
        
        // 2. Declare numerals
        let numerals: [String: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        // 3. Iterate through characters
        
        for (_, char) in s.reversed().enumerated() {
            if let p = numerals[char.description] {
                result += p
            }
            
            print("Previous: \(previousChar), Current: \(char.description), Result: \(result)")
            
            if !previousChar.isEmpty {
                print("Previous char isn't empty...")
                if (previousChar == "V" && char.description == "I") || (previousChar == "X" && char.description == "I") {
                    
                    result -= 2
                    
                    print("Subtracting... \(result)")
                } else if (previousChar == "L" && char.description == "X") || (previousChar == "C" && char.description == "X") {
                    result -= 20
                    print("Subtracting... \(result)")
                } else if (previousChar == "D" && char.description == "C") || (previousChar == "M" && char.description == "C") {
                    result -= 200
                    print("Subtracting... \(result)")
                }
            }
            
            previousChar = char.description
            
            print("Current character: \(char), Result: \(result)\n\n")
        }
        
        return result
    }
}
