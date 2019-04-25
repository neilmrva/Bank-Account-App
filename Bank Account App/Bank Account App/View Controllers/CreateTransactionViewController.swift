//
//  CreateTransactionViewController.swift
//  Bank Account App
//
//  Created by Work on 12/22/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import UIKit

protocol CreateTransactionViewControllerDelegate:AnyObject
{
    func add(newTransaction:Transaction)
}

class CreateTransactionViewController: UIViewController
{
    weak var delegate:CreateTransactionViewControllerDelegate?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "SaveTransactionSegue"
        {
            if  let newTransactionView = view as? NewTransactionView,
                let amount = newTransactionView.amount,
                let description = newTransactionView.transactionDescription,
                let category = newTransactionView.selectedCategory
            {
                let transaction = Transaction(amount: amount, description: description, date: Date(), category: category)
                delegate?.add(newTransaction: transaction)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
