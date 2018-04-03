//
//  ViewController.swift
//  KeyChainTutorialMedium
//
//  Created by Funmi Adewodu on 03/04/2018.
//  Copyright © 2018 funmiadewodu. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func savePasswordButtonTapped(_ sender: UIButton) {
        
        if let password = passwordTextField.text {
            
            let saveSuccessful: Bool = KeychainWrapper.standard.set(password, forKey: "userPassword")
            print("Save was successful: \(saveSuccessful)")
            self.view.endEditing(true)
        }
    }
    

    @IBAction func retrievePasswordButtonTapped(_ sender: UIButton) {
        
        let retrievedPassword: String? = KeychainWrapper.standard.string(forKey: "userPassword")
        
        if let retrievedPassword = retrievedPassword {
            print("Retrieved password is: \(retrievedPassword)")
        }
    }
    
}

