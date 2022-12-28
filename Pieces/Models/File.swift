//
//  File.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/28/22.
//

import Foundation

struct Time {
    let date = Date()
    let dateFormatter = DateFormatter()
    
    func getTime() -> String {
        dateFormatter.dateFormat = "HH:mm:ss"
        let result = dateFormatter.string(from: date)
        
        return result
    }
    
    func getHour() -> String {
        dateFormatter.dateFormat = "HH:mm:ss"
        let dateString = dateFormatter.string(from: date)
        let result = dateString.components(separatedBy: ":")[0]
        
        return result
    }
    
}
