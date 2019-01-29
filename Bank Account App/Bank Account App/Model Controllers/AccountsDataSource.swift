//
//  AccountsDataSource.swift
//  Bank Account App
//
//  Created by Work on 1/28/19.
//  Copyright © 2019 neilmrva. All rights reserved.
//

import Foundation
import UIKit

class AccountsDataSource:NSObject, UITableViewDataSource
{
    var accounts:[Account]
    
    init(accounts:[Account])
    {
        self.accounts = accounts
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return accounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath) as! AccountTableViewCell
        let index = indexPath.row
        
        let account = accounts[index]
        cell.model = AccountTableViewCell.Model(account: account, index: index)
        
        return cell
    }
    
}
