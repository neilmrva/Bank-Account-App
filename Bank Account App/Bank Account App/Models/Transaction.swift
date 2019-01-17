//
//  Transaction.swift
//  Bank Account App
//
//  Created by Work on 12/21/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import Foundation
import UIKit

enum TransactionCategory:String, Codable
{
    case income
    case groceries
    case utilities
    case home
    case transport
    case fun
}

extension TransactionCategory
{
    struct Appearance
    {
        let color:UIColor
        let image:UIImage
    }
    
    var appearance:Appearance
    {
        switch self
        {
            case .income:
                return Appearance(color: .lightGrassGreen, image: #imageLiteral(resourceName: "income"))
            case .groceries:
                return Appearance(color: .seafoamBlue, image: #imageLiteral(resourceName: "groceries"))
            case .utilities:
                return Appearance(color: .liliac, image: #imageLiteral(resourceName: "utilities"))
            case .home:
                return Appearance(color: .sunflowerYellow, image: #imageLiteral(resourceName: "home"))
            case .transport:
                return Appearance(color: .peach, image: #imageLiteral(resourceName: "transport"))
            case .fun:
                return Appearance(color: .carnation, image: #imageLiteral(resourceName: "fun"))
        }
    }
}

struct Transaction:Codable
{
    let amount:Double
    let description:String
    let date:Date
    let category:TransactionCategory
}
