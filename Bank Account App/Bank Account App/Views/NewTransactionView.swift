//
//  NewTransactionView.swift
//  Bank Account App
//
//  Created by Work on 1/14/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import Foundation
import UIKit

class NewTransactionView:UIView
{
    @IBOutlet fileprivate weak var amountTextField: UITextField!
    @IBOutlet fileprivate weak var descriptionTextField: UITextField!
    @IBOutlet fileprivate var ringViews:[UIView]!
    @IBOutlet fileprivate var categoryButtons:[UIButton]!
    
    fileprivate var selectedIndex:Int = 0
    
    @IBAction func onCategorySelected(_ sender: UIButton)
    {
        selectedIndex = categoryButtons.index(of: sender)!
        print(selectedIndex)
    }
    
    
}
