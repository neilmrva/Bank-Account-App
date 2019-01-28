//
//  FloatExtension.swift
//  Bank Account App
//
//  Created by Work on 1/14/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import Foundation

extension Double
{
    var dollarsFormatting:String
    {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        return formatter.string(from: NSNumber(value: self))!
    }
}
