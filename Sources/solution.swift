import Foundation

var greeting = "Hello, playground"

public class Solution {
    
    public init() {
        // Helps us access in main algorithms file
    }
    
    // TODO: COME BACK TO THIS
    public func longestCommonPrefix(_ strs: [String]) -> String {
        
        var result = strs.first!.first!.description
        
        for (idx, str) in strs.enumerated() {
            if (idx != 0) && (str.first?.description == result) {
                // Go through word
                for (_idx, char) in str.enumerated() {
                    if (char.description == strs.first![strs.first!.index(strs.first!.startIndex, offsetBy: _idx)].description) {
                        result.append(char.description)
                    }
                }
            }
        }
        return result
    }
}


