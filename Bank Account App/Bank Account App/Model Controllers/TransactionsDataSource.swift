//
//  TransactionsDataSource.swift
//  Bank Account App
//
//  Created by Work on 4/23/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import Foundation
import UIKit

class TransactionsDataSource:NSObject
{
    fileprivate var transactions:[Transaction]
    
    init(transactions:[Transaction])
    {
        self.transactions = transactions
    }
}

extension TransactionsDataSource:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return transactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! TransactionTableViewCell
        let index = indexPath.row
        
        let transaction = transactions[index]
        cell.model = TransactionTableViewCell.Model(transaction: transaction)
        
        return cell
    }
}
 
