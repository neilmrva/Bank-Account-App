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
    var stateController:StateController!
    var account:Account!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelTransactionCreation(_ segue:UIStoryboardSegue)
    {
        
    }

    @IBAction func saveTransaction(_ segue:UIStoryboardSegue)
    {
        
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
