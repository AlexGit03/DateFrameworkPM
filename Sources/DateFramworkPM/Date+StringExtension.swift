//
//  Date+StringExtension.swift
//  DateFramework
//
//  Created by Antonio Alessandro Chillura on 19/09/2019.
//  Copyright © 2019 Antonio Alessandro Chillura. All rights reserved.
//

import Foundation

public extension String {
    
    func date(formatter:String) -> Date? {
        guard let formatterValue = PMFormatter.init(rawValue: formatter) else { return nil }
        return date(formatter: formatterValue)
    }
    
    func date(formatter:PMFormatter) -> Date? {
        return formatter.dateFormatter?.date(from: self)
    }
    
    func convert(dateFormatter:PMFormatter, inDateformat format:String) -> String? {
        let dateConv = self.date(formatter: dateFormatter)
        return dateConv?.getStringWith(format: format)
    }
    
    func convert(dateFormatter:PMFormatter, inDateformat format:PMFormatter) -> String? {
        let dateConv = self.date(formatter: dateFormatter)
        return dateConv?.getStringWith(format: format)
    }
    
    func convert(dateFormatter:String, inDateformat format:String) -> String? {
        guard let formatter = PMFormatter.init(rawValue: dateFormatter) else { return nil }
        return convert(dateFormatter: formatter, inDateformat: format)
    }
    
    func convert(dateFormatter:String, inDateformat format:PMFormatter) -> String? {
        guard let formatter = PMFormatter.init(rawValue: dateFormatter) else { return nil }
        return convert(dateFormatter: formatter, inDateformat: format)
    }
}
