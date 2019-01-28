//
//  AccountCellTableViewCell.swift
//  Bank Account App
//
//  Created by Work on 1/28/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import UIKit

class AccountTableViewCell: UITableViewCell
{
    @IBOutlet fileprivate weak var nameLabel:UILabel!
    @IBOutlet fileprivate weak var totalLabel:UILabel!
    @IBOutlet fileprivate weak var bankLabel:UILabel!
    @IBOutlet fileprivate weak var numberLabel:UILabel!
    @IBOutlet fileprivate weak var coloredView: UIView!
    
    var model:Model?
    {
        didSet
        {
            if let model = model
            {
                nameLabel.text = model.name
                totalLabel.text = model.total
                bankLabel.text = model.bank
                numberLabel.text = model.number
                coloredView.backgroundColor = model.color
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

// MARK: View Model
extension AccountTableViewCell
{
    struct Model
    {
        let name:String
        let total:String
        let bank:String
        let number:String
        let color:UIColor
        
        init(account:Account, index:Int)
        {
            name = account.name
            total = account.getTotal().dollarsFormatting
            bank = account.bank
            number = account.number.accountNumberFormatting
            color = UIColor.color(for: index)
        }
    }
}
