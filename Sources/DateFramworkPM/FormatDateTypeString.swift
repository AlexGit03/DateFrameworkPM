//
//  FormatDateTypeString.swift
//  DateFramework
//
//  Created by Antonio Alessandro Chillura on 12/11/2019.
//  Copyright © 2019 Antonio Alessandro Chillura. All rights reserved.
//

import Foundation

@propertyWrapper
public class FormatDateTypeString {
    private(set) var value:String?
    
    private var dateFormatter:Any!
    private var format:Any!
    private var dateConv:Date?
    
    public init(dateFormatter:PMFormatter, inDateformat format:String) {
        self.format = format
        self.dateFormatter = dateFormatter
    }
    
    public init(dateFormatter:PMFormatter, inDateformat format:PMFormatter) {
        self.format = format
        self.dateFormatter = dateFormatter
    }
    
    public convenience init(dateFormatter:String, inDateformat format:String) {
        let formatter = PMFormatter.init(rawValue: dateFormatter) ?? .italianDateFormatter
        self.init(dateFormatter: formatter, inDateformat: format)
    }

    public convenience init(dateFormatter:String, inDateformat format:PMFormatter) {
        let formatter = PMFormatter.init(rawValue: dateFormatter) ?? .italianDateFormatter
        self.init(dateFormatter: formatter, inDateformat: format)
    }
    
    public var wrappedValue:String? {
        get {
            value
        }
        set {
            
            if let dateFormatter = dateFormatter as? PMFormatter {
                dateConv = newValue?.date(formatter: dateFormatter)
            } else if let dateFormatter = dateFormatter as? PMFormatter {
                dateConv = newValue?.date(formatter: dateFormatter)
            }
            
            if let dateConv = dateConv {
                if let format = format as? PMFormatter {
                    value = dateConv.getStringWith(format: format)
                } else  if let format = format as? String {
                    value = dateConv.getStringWith(format: format)
                } else {
                    value = newValue
                }
            } else {
                value = newValue
            }
        }
    }
}
