//
//  StorageController.swift
//  Bank Account App
//
//  Created by Work on 12/21/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import Foundation

class StorageController
{
    private func getAccountsFileURL() -> URL
    {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsDirectory.appendingPathComponent("accounts").appendingPathExtension("json")
    }
    
    func save(accounts:[Account])
    {
        let jsonEncoder = JSONEncoder()
        
        do
        {
            let encodedJSON = try jsonEncoder.encode(accounts)
            try encodedJSON.write(to: getAccountsFileURL(), options: .noFileProtection)
        }
        catch
        {
            print(error)
        }
    }
    
    func loadAccounts() -> [Account]?
    {
        do
        {
            let jsonData = try Data(contentsOf: getAccountsFileURL())
            
            let jsonDecoder = JSONDecoder()
            let accounts = try jsonDecoder.decode(Array<Account>.self, from: jsonData)
            
            return accounts
        }
        catch
        {
            print(error)
        }
        
        return nil
    }
}
