//
//  TransactionsViewController.swift
//  Bank Account App
//
//  Created by Work on 12/22/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import UIKit

class TransactionsViewController:UIViewController
{
    @IBOutlet fileprivate weak var totalLabel: UILabel!
    @IBOutlet fileprivate weak var numberLabel: UILabel!
    @IBOutlet fileprivate weak var tableView: UITableView!
    
    fileprivate var dataSource:TransactionsDataSource!
    
    var stateController:StateController!
    var account:Account!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = account.name
        numberLabel.text = account.number.accountNumberFormatting
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        totalLabel.text = account.getTotal().dollarsFormatting
        dataSource = TransactionsDataSource(transactions: account.transactions)
        tableView.dataSource = dataSource
        tableView.reloadData()
    }
    
    @IBAction func cancelTransactionCreation(_ segue:UIStoryboardSegue)
    {
        
    }

    @IBAction func saveTransaction(_ segue:UIStoryboardSegue)
    {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if  let navigationController = segue.destination as? UINavigationController,
            let createTransactionViewController = navigationController.viewControllers.first as? CreateTransactionViewController
        {
            createTransactionViewController.delegate = self
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

extension TransactionsViewController:CreateTransactionViewControllerDelegate
{
    func add(newTransaction: Transaction)
    {
        account.transactions.append(newTransaction)
        stateController.update(account: account)
    }
}
