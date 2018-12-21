//
//  Transaction.swift
//  Bank Account App
//
//  Created by Work on 12/21/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import Foundation

enum TransactionCategory:String, Codable
{
    case income
    case groceries
    case utilities
    case home
    case transport
    case fun
}

struct Transaction:Codable
{
    let amount:Double
    let description:String
    let date:Date
    let category:TransactionCategory
}
