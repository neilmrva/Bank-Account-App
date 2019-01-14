//
//  DateExtension.swift
//  Bank Account App
//
//  Created by Work on 1/14/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import Foundation

extension Date
{
    var transactionFormtting: String
    {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
}
