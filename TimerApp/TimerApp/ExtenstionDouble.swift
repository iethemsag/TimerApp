//
//  ExtenstionDouble.swift
//  TimerApp
//
//  Created by Ibrahim Ethem Sag on 22.01.2024.
//

import Foundation

extension Double{
    func asString(style: DateComponentsFormatter.UnitsStyle) -> String{
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour,.minute,.second,.nanosecond]
        formatter.unitsStyle = style
        return formatter.string(from: self) ?? ""
    }
}
