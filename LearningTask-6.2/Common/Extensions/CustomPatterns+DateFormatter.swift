//
//  CustomPatterns+DateFormatter.swift
//  LearningTask-6.2
//
//  Created by Italo cavalcanti on 03/11/22.
//

import Foundation

extension DateFormatter {
    
    private static var dayPlusAbbreviatedMonthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = .init(identifier: "pt_BR")
        formatter.dateFormat = "dd MMM"
        
        return formatter
    }()
    
    enum CustomPattern {
        case dayPlusAbbreviatedMonth
        
        var formatter: DateFormatter {
            switch self {
            case .dayPlusAbbreviatedMonth:
                return DateFormatter.dayPlusAbbreviatedMonthFormatter
            }
        }
    }
    
    static func format(date: Date, to customPattern: CustomPattern) -> String {
        return customPattern.formatter.string(from: date).uppercased()
    }
    
}

extension Date {
    typealias FormattedText = String
    
    var asDayPlusAbbreviatedMonth: FormattedText {
        return DateFormatter.format(date: self, to: .dayPlusAbbreviatedMonth)
    }
}
