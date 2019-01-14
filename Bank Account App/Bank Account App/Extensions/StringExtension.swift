//
//  StringExtension.swift
//  Bank Account App
//
//  Created by Work on 1/14/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import Foundation

extension String
{
    var accountNumberFormatting:String
    {
        var formattedString = ""
        
        for (index, character) in self.enumerated()
        {
            if index % 4 < 3 || index == self.count - 1
            {
                formattedString.append(character)
            }
            else
            {
                formattedString.append("\(character) ")
            }
        }
        
        return formattedString
    }
}

//extension String {
//    var accountNumberFormatting: String {
//        var formattedString = ""
//        for (index, character) in characters.enumerated() {
//            if index % 4 < 3 || index == characters.count - 1 {
//                formattedString.append(character)
//            } else {
//                formattedString.append("\(character) ")
//            }
//        }
//        return formattedString
//    }
//}
