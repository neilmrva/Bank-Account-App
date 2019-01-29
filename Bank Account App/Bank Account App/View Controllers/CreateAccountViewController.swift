//
//  CreateAccountViewController.swift
//  Bank Account App
//
//  Created by Work on 12/22/18.
//  Copyright © 2018 neilmrva. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController
{
    @IBOutlet fileprivate weak var accountName: UITextField!
    @IBOutlet fileprivate weak var bankName: UITextField!
    @IBOutlet fileprivate weak var accountNumber: UITextField!
    
    var stateController:StateController!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "SaveAccountSegue"
        {
            stateController.createAccount(
                accountName: accountName.text ?? "",
                bankName: bankName.text ?? "",
                accountNumber: accountNumber.text ?? ""
            )
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
