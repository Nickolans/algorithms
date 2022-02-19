import Foundation

extension Solution {
    public func isPalindrome(_ x: Int) -> Bool {
        return (x.description == String(x.description.reversed()))
    }
}
