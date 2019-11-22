//
//  Formatter.swift
//  DateFramework
//
//  Created by Antonio Alessandro Chillura on 19/09/2019.
//  Copyright © 2019 Antonio Alessandro Chillura. All rights reserved.
//

import Foundation

public enum PMFormatter:String, CaseIterable {
    case dayFormatter = "dd"
    case monthFormatter = "MM"
    case halfMonthFormatter = "MMM"
    case fullMonthFormatter = "MMMM"
    case yearFormatter = "yyyy"
    case timeFormatter = "HH:mm"
    case compliteTimeFormatter = "HH:mm:ss"
    case hourTimeFormatter = "HH"
    case minuteTimeFormatter = "mm"
    case secondTimeFormatter = "ss"
    case italianDateFormatter = "dd/MM/yyyy"
    case englandDateFormatter = "MM/dd/yyyy"
    case shortDateFormatter = "yyyy-MM-dd"
    case slashedShortDateFormatter = "yyyy/MM/dd"
    case metersFormatter = "yyyy-MM-dd'T'HH:mm:ss"
    case completeDateFormatter = "dd/MM/yyyy HH.mm.ss"
    case completeDateFormatterWS = "dd/MM/yyyy HH.mm"
    case completeDateFormatterWSFormatter = "dd/MM/yyyy HH:mm"
    case completeDateFormatterCompleteWSFormatter = "dd/MM/yyyy HH:mm:ss"
    
    public var value:String {
        return self.rawValue
    }
    
    public var dateFormatter:DateFormatter? {
        switch self {
        case .timeFormatter:
            return DateFormatter.timeFormatter
        case .yearFormatter:
            return DateFormatter.yearFormatter
        case .fullMonthFormatter:
            return DateFormatter.fullMonthFormatter
        case .monthFormatter:
            return DateFormatter.monthFormatter
        case .shortDateFormatter:
            return DateFormatter.shortDateFormatter
        case .slashedShortDateFormatter:
            return DateFormatter.slashedShortDateFormatter
        case .italianDateFormatter:
            return DateFormatter.italianDateFormatter
        case .metersFormatter:
            return DateFormatter.metersFormatter
        case .completeDateFormatter:
            return DateFormatter.completeDateFormatter
        case .completeDateFormatterWS:
            return DateFormatter.completeDateFormatterWS
        case .completeDateFormatterWSFormatter:
            return DateFormatter.completeDateFormatterWSFormatter
        case .completeDateFormatterCompleteWSFormatter:
            return DateFormatter.completeDateFormatterCompleteWSFormatter
        case .englandDateFormatter:
            return DateFormatter.englandDateFormatter
        case .dayFormatter:
            return DateFormatter.dayFormatter
        case .halfMonthFormatter:
            return DateFormatter.halfMonthFormatter
        case .hourTimeFormatter:
            return DateFormatter.hourTimeFormatter
        case .minuteTimeFormatter:
            return DateFormatter.minuteTimeFormatter
        case .secondTimeFormatter:
            return DateFormatter.secondTimeFormatter
        case .compliteTimeFormatter:
            return DateFormatter.compliteTimeFormatter
        }
    }
}
