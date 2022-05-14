import Foundation

class LRUCache {
    
    private var capacity: Int = 0
    private var storage: [Int: Int] = [:]
    private var recentlyUsedKeys: [Int] = []

    init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int {
        guard let value = storage[key] else {
            return -1
        }
        
        self.updateRecentlyUsedKeys(key)
        
        return value
    }
    
    func put(_ key: Int, _ value: Int) {
        if storage[key] != nil {
            storage[key] = value
            self.updateRecentlyUsedKeys(key)
        } else {
            if storage.count == capacity {
                // Evict
                if let last = recentlyUsedKeys.last {
                    storage[last] = nil
                    self.recentlyUsedKeys.removeLast()
                }
            }
            
            storage[key] = value
            self.updateRecentlyUsedKeys(key)
        }
    }
    
    private func updateRecentlyUsedKeys(_ key: Int) {
        self.recentlyUsedKeys.removeAll(where: { $0 == key })
        self.recentlyUsedKeys.insert(key, at: 0)
    }
}
