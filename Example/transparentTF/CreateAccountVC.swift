//
//  CreateAccountVC.swift
//  DuoFit
//
//  Created by Naveen Magatala on 1/16/19.
//  Copyright © 2019 Curtis Wiseman. All rights reserved.
//

import UIKit
import transparentTF

class CreateAccountVC: UIViewController {

    @IBOutlet weak var firstNameTFV: TransparentTF!
    @IBOutlet weak var lastNameTFV: TransparentTF!
    @IBOutlet weak var emailTFV: TransparentTF!
    @IBOutlet weak var passwordTFV: TransparentTF!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        print("create account tapped...")
    }
    
    func configureTextFields() {
        passwordTFV.configure(leftImage: UIImage(named: "password"),
                              placeHolder: "Enter Password")
        firstNameTFV.configure(leftImage: UIImage(named: "user"),
                               placeHolder: "Enter FirstName",
                               nextTextField: lastNameTFV)
        emailTFV.configure(leftImage: UIImage(named: "email"),
                           placeHolder: "Enter Email",
                           nextTextField: passwordTFV)
        lastNameTFV.configure(leftImage: UIImage(named: "user"),
                              placeHolder: "Enter LastName",
                              nextTextField: emailTFV)
    }
}
