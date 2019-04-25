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
    // MARK: Private Outlets
    @IBOutlet fileprivate weak var amountTextField: UITextField!
    @IBOutlet fileprivate weak var descriptionTextField: UITextField!
    @IBOutlet fileprivate var ringViews:[UIView]!
    @IBOutlet fileprivate var categoryButtons:[UIButton]!
    
    // MARK: Private Properties
    fileprivate var selectedIndex:Int = 0
    
    // MARK: Public Computed Properties
    var amount:Double?
    {
        get
        {
            guard let text = amountTextField.text
            else
            {
                return nil
            }
            
            return Double(text)
        }
    }
    
    var transactionDescription:String?
    {
        get
        {
            return descriptionTextField.text
        }
    }
    
    var selectedCategory:TransactionCategory?
    {
        get
        {
            switch selectedIndex
            {
                case 0: return .income
                case 1: return .groceries
                case 2: return .utilities
                case 3: return .home
                case 4: return .transport
                case 5: return .fun
                default: return nil
            }
        }
    }
    
    @IBAction func onCategorySelected(_ sender: UIButton)
    {
        // reset previous ring
        resetRings()
        
        // get selected ring index
        selectedIndex = categoryButtons.index(of: sender)!
        
        // set ring color
        let selectedRingView = ringViews[selectedIndex]
        selectedRingView.layer.borderColor = UIColor.skyBlue.cgColor
    }
    
    fileprivate func resetRings()
    {
        for ringView in ringViews
        {
            ringView.layer.borderColor = UIColor.clear.cgColor
        }
    }
    
    override func awakeFromNib()
    {
        resetRings()
    }
}
