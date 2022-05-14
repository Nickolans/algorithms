import Foundation

extension Solution {
    public func myAtoi(_ s: String) -> Int {
        
        let nums = Array(s).map { String($0) }
        var certNums: [Int] = []
        var positrons: [String] = []
        var negative = false
        var result = 0
        
        for num in nums {
            // 1. Check if num
            if let n = Int(num) {
                certNums.append(n)
                continue
            }
            
            // 2. Check if -/+
            if num == "-" {
                positrons.append("-")
                negative = true
                continue
            }
            
            if num == "+" {
                positrons.append("+")
            }
            if num == "." {
                break
            }
            
            if num != "+" && num != " " {
//                print("Character detected", certNums.count)
                if certNums.isEmpty {
                    return 0
                }
            }
        }
        
        print(certNums)
        
        if positrons.contains("-") && positrons.contains("+") {
            return 0
        }
        
        if certNums.isEmpty {
            certNums.append(0)
        }
        
        var resultString = ""
        _ = certNums.map { resultString += "\($0)"  }
        result = Int(resultString)!
        
        if negative {
            result = -result
        }
        
        // Check num
        if result < Int32.min {
            result = Int(Int32.min)
        } else if result > Int32.max {
            result = Int(Int32.max)
        }
        
        return result
    }
}
