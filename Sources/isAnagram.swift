import Foundation

extension Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        let ss = Array(s).map { String($0) }
        let tt = Array(t).map { String($0) }
        
        var sTally: [String: Int] = [:]
        var tTally: [String: Int] = [:]
        
        // 1. Check if same length
        if ss.count != tt.count {
            return false
        }
        
        // 2. Tally
        for index in 0..<ss.count {
            if sTally[ss[index]] != nil {
                sTally[ss[index]]! += 1
            } else {
                sTally[ss[index]] = 1
            }
            
            if tTally[tt[index]] != nil {
                tTally[tt[index]]! += 1
            } else {
                tTally[tt[index]] = 1
            }
        }
        
        // 3. Compare
        if sTally.keys.sorted() == tTally.keys.sorted() {
    
        } else {
            return false
        }
        
        print(sTally, tTally)
        return (sTally == tTally)
    }
}
