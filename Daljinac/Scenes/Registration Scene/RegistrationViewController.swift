//
//  RegistrationViewController.swift
//  Daljinac
//
//  Created by O on 6/20/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var registrationView: RegistrationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       registrationView.updateUI()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // MARK: - DATA VALIDATION
    
    
    
    
    
    
    // MARK: - SEND REGISTRATION DATA
    
    
    @IBAction func sendRegistrationData(_ sender: Any) {
        
        print("dare je car")
        
        
    }
    
    
    
    
    
    
    
    
     // MARK: - Update UI
//    func updateUI() {
//        registrationView.firstNameTextFild.placeholder = RegistrationData.firstName
//        registrationView.lastNameTxtFild.placeholder = RegistrationData.lastName
//        registrationView.passwordTxtFild.placeholder = RegistrationData.password
//        registrationView.rePasswordTxtFild.placeholder = RegistrationData.rePassword
//        registrationView.phoneNumberTxtFild.placeholder = RegistrationData.phoneNumber
//        registrationView.daljinacLink.text = "www.daljinac.com"
//        registrationView.titleLable.text = "NAJVEĆI IZBOR KANALA"
//        registrationView.termsLbl.text = "Prihvatam uslove korišćenja"
//        registrationView.priceLbl.text = "Cena: 180 din (sa PDV) nedeljno"
//    }
//    
}
