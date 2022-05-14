import Foundation

extension Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        
        var newIntervals: [[Int]] = intervals
        var index = 0
        var complete = false
        
        while (!complete) {
            
            if newIntervals.indices.contains(index) && newIntervals.indices.contains(index + 1) {
                let current = newIntervals[index]
                let next = newIntervals[index + 1]
                
                
                if next.contains(where: { $0 >= current[0] && $0 <= current[1] }){
                    // It overlaps, lets combine
                    let newArr = [next.first!, current.last!]
                    newIntervals.remove(at: index + 1)
                    newIntervals.remove(at: index)
                    newIntervals.insert(newArr, at: index)
                } else if current.contains(where: { $0 >= next[0] && $0 <= next[1] }) {
                    // It overlaps, lets combine
                    let newArr = [current.first!, next.last!]
                    newIntervals.remove(at: index + 1)
                    newIntervals.remove(at: index)
                    newIntervals.insert(newArr, at: index)
                    
                } else {
                    index += 1
                }
            } else {
                //
                complete = true
            }
        }
        
        
        return newIntervals
    }
}
