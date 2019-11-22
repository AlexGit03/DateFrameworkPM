//
//  Date+DateExtension.swift
//  DateFramework
//
//  Created by Antonio Alessandro Chillura on 19/09/2019.
//  Copyright © 2019 Antonio Alessandro Chillura. All rights reserved.
//

import Foundation

public extension Date {
    
    static var dafaultFormat:PMFormatter = .italianDateFormatter
    
    var string:String? {
        return Date.dafaultFormat.dateFormatter?.string(from: self)
    }
    
    func getStringWith(format:String) -> String? {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    func getStringWith(format:PMFormatter) -> String? {
        return format.dateFormatter?.string(from: self)
    }
    
}
