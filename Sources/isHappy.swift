import Foundation

extension Solution {
    func isHappy(_ n: Int) -> Bool {
        
        // 1. Current number and what's been seen
        var number = n
        var seen: [Int] = []
        
        while (number != 1) {
            
            // 2. Digits and sum of their squares
            let digits = number.description.map { Int(String($0))! }
            let result = digits.reduce(0, { ($0) + ($1 * $1) })
            number = result
            
            // 3. Has number been seen?
            if (seen.contains(number)) {
                break
            } else {
                seen.append(number)
            }
            
            // 4. Does number over extend range?
            if number <= 1 || number >= Int32.max {
                break
            }
        }
        
        // 5. Number satisfaction
        return (number == 1)
    }
}
