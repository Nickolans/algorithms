import Foundation

struct PointDistance {
    var pos: [Int]
    var euc: Double
}

extension Solution {
    
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        
        if (k == 0) {
            return []
        }
        
        var pointDistances: [PointDistance] = []
        
        // 1. Gather distances
        for point in points {
            let x = (point[0] - 0) * (point[0] - 0)
            let y = (point[1] - 0) * (point[1] - 0)
            let result = sqrt(Double(x + y))
            pointDistances.append(PointDistance(pos: point, euc: result))
        }
        
        // 2. Sort
        let sorted = pointDistances.sorted(by: { $0.euc < $1.euc })
        
        // 3. Get points in order
        let keys = sorted.map( { $0.pos as [Int] } )
        
        // 4. Return subset
        return keys[..<k].map { $0 as [Int] }
    }
}
