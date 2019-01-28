//
//  TransactionTableViewCell.swift
//  Bank Account App
//
//  Created by Work on 1/28/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell
{
    @IBOutlet fileprivate weak var circleView: UIView!
    @IBOutlet fileprivate weak var categoryImageView: UIImageView!
    @IBOutlet fileprivate weak var descriptionLabel: UILabel!
    @IBOutlet fileprivate weak var dateLabel: UILabel!
    @IBOutlet fileprivate weak var amountLabel: UILabel!

    var model:Model?
    {
        didSet
        {
            if let model = model
            {
                circleView.backgroundColor = model.categoryColor
                categoryImageView.image = model.categoryImage
                descriptionLabel.text = model.description
                amountLabel.text = model.amount
                amountLabel.textColor = model.amountColor
                dateLabel.text = model.date
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

extension TransactionTableViewCell
{
    struct Model
    {
        let categoryColor:UIColor
        let categoryImage:UIImage
        let description:String
        let date:String
        let amount:String
        let amountColor:UIColor
        
        init(transaction:Transaction)
        {
            categoryColor = transaction.category.appearance.color
            categoryImage = transaction.category.appearance.image
            description = transaction.description
            amount = transaction.amount.dollarsFormatting
            date = transaction.date.transactionFormatting
            amountColor = transaction.category == .income ? .darkLimeGreen : .slate
        }
    }
}
