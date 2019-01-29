//
//  StateController.swift
//  Bank Account App
//
//  Created by Work on 12/21/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import Foundation

class StateController
{
    private let storageController:StorageController
    var accounts:[Account]
    
    init(storageController:StorageController)
    {
        self.storageController = storageController
        self.accounts = storageController.loadAccounts() ?? [Account]()
    }
    
    func add(account:Account)
    {
        accounts.append(account)
        storageController.save(accounts: accounts)
    }
    
    func update(account:Account)
    {
        for (index, storedAccount) in accounts.enumerated()
        {
            if storedAccount.number == account.number
            {
                accounts[index] = account
                storageController.save(accounts: accounts)
                break
            }
        }
    }
    
}
