//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Serhan Khan on 06.10.22.
//

import Foundation


extension Date {
    
    var eighteenYearsAgo: Date {
        return Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredYearsAgo: Date {
        return Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    }
    
}
