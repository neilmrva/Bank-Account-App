//
//  AccountsViewController.swift
//  Bank Account App
//
//  Created by Work on 12/22/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import UIKit

class AccountsViewController:UIViewController
{
    @IBOutlet fileprivate weak var tableView: UITableView!
    fileprivate var dataSource:AccountsDataSource!
    
    var stateController:StateController!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        dataSource = AccountsDataSource(accounts: stateController.accounts)
        tableView.dataSource = dataSource
        tableView.reloadData()
    }
    
    @IBAction func cancelAccountCreation(_ segue:UIStoryboardSegue)
    {
        
    }
    
    @IBAction func saveAccount(_ segue:UIStoryboardSegue)
    {
        
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        switch segue.identifier!
        {
            case "CreateAccountSegue":
                if
                    let navigationController = segue.destination as? UINavigationController,
                    let createAccountViewController = navigationController.viewControllers.first as? CreateAccountViewController
                {
                    createAccountViewController.stateController = stateController
                }
            case "TransactionSegue":
                break
                
            
            default:
                break
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
