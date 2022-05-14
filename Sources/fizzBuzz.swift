import Foundation

extension Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        
        if (n == 0) {
            return []
        }
        
        // 1. Result
        var result: [String] = []
        
        // 2. Do fun stuff
        for num in 1...(n) {
            
            var divisibleThree = false
            var divisibleFive = false
            var string = ""
            
            if ((num % 3) == 0) { divisibleThree.toggle() }
            if ((num % 5) == 0) { divisibleFive.toggle() }
            
            if divisibleThree {
                string += "Fizz"
            }
            
            if divisibleFive {
                string += "Buzz"
            }
            
            if string.isEmpty {
                string += "\(num)"
            }
            
            result.append(string)
        }
        
        return result
    }
}
