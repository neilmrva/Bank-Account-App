//
//  Account.swift
//  Bank Account App
//
//  Created by Work on 12/21/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import Foundation

struct Account:Codable
{
    let name:String
    let bank:String
    let number:String
    var transactions:[Transaction]
    
    /*
        This function can be expressed as a calculated value
        var total:Double
        {
            return transactions.reduce(0.0, { $0 + $1.amount * ($1.category == .income ? 1 : -1) })
        }
    */
    func getTotal() -> Double
    {
        var total = 0.0
        
        for transaction in transactions
        {
            if transaction.category == .income
            {
                total += transaction.amount
            }
            else
            {
                total -= transaction.amount
            }
        }
        
        return total
    }
}
