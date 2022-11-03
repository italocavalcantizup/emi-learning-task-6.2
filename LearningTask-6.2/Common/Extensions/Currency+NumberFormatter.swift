//
//  Currency+NumberFormatter.swift
//  LearningTask-6.2
//
//  Created by Italo cavalcanti on 03/11/22.
//

import Foundation

extension NumberFormatter {
    
    private static var currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "pt_BR")
        return formatter
    }()
    
    static func formatToCurrency(decimal: Decimal) -> String {
        return currencyFormatter.string(from: decimal as NSDecimalNumber)!
    }
    
}

extension Decimal {
    typealias FormattedText = String
    
    var asCurrency: FormattedText {
        return NumberFormatter.formatToCurrency(decimal: self)
    }
}
