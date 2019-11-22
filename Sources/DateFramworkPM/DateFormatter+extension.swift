//
//  DateFormatter+extension.swift
//  DateFramework
//
//  Created by Antonio Alessandro Chillura on 19/09/2019.
//  Copyright © 2019 Antonio Alessandro Chillura. All rights reserved.
//

import Foundation

public extension DateFormatter {
    
    static let dayFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.dayFormatter.value
        return dateFormatter
    }()
    
    static let halfMonthFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.halfMonthFormatter.value
        return dateFormatter
    }()
    
    static let compliteTimeFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.compliteTimeFormatter.value
        return dateFormatter
    }()
    
    static let timeFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.timeFormatter.value
        return dateFormatter
    }()
    
    static let hourTimeFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.hourTimeFormatter.value
        return dateFormatter
    }()
    
    static let minuteTimeFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.minuteTimeFormatter.value
        return dateFormatter
    }()
    
    static let secondTimeFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.secondTimeFormatter.value
        return dateFormatter
    }()
    
    static let yearFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.yearFormatter.value
        return dateFormatter
    }()
    
    static let fullMonthFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.fullMonthFormatter.value
        return dateFormatter
    }()
    
    static let monthFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.monthFormatter.value
        return dateFormatter
    }()
    
    static let shortDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.shortDateFormatter.value
        return dateFormatter
    }()
    
    static let slashedShortDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.slashedShortDateFormatter.value
        return dateFormatter
    }()
    
    static let italianDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.italianDateFormatter.value
        return dateFormatter
    }()
    
    static let italianDateFormatterNoTimeZone: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = PMFormatter.italianDateFormatter.value
        return dateFormatter
    }()
    
    static let englandDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.englandDateFormatter.value
        return dateFormatter
    }()
    
    static let metersFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.metersFormatter.value
        return dateFormatter
    }()
    
    static let completeDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.completeDateFormatter.value
        return dateFormatter
    }()
    
    static let completeDateFormatterWS: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.completeDateFormatterWS.value
        return dateFormatter
    }()
    
    static let completeDateFormatterWSFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.completeDateFormatterWSFormatter.value
        return dateFormatter
    }()
    
    static let completeDateFormatterCompleteWSFormatter: DateFormatter = {
        let dateFormatter = DateFormatter.defaultDateFormatter()
        dateFormatter.dateFormat = PMFormatter.completeDateFormatterCompleteWSFormatter.value
        return dateFormatter
    }()
    
    
    static func defaultDateFormatter() -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale.init(localeIdentifier: "IT_it") as Locale
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        return dateFormatter
    }
}
