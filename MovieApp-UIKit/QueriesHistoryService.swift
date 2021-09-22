//
//  QueriesHistoryService.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//

import Foundation

/// Wrapper for storing the history of queries.
final class QueriesHistoryService {
    class func getHistory(key: String) -> [Any]? {
        return UserDefaults.standard.array(forKey: key)
    }
    
    private class func setObject(key: String, value: Any?) {
        if value == nil {
            UserDefaults.standard.removeObject(forKey: key)
        } else {
            UserDefaults.standard.set(value, forKey: key)
        }
        
        sync()
    }
    
    class func saveHistory(key: String, value: [Any]) {
        setObject(key: key, value: value)
    }
    
    class func sync() {
        UserDefaults.standard.synchronize()
    }
}
