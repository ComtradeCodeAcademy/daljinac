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
    var registrationForm = FormValidationModel(userName: "Darko", userLastName: "Batur", userPassword: "22222", userRepassword: "22222", mobile: "0642315939")
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       registrationView.updateUI()
      
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // MARK: - DATA VALIDATION
    
//    func isValidEmail() -> Bool {
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
//
//        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
//        return emailTest.evaluate(with: self)
    
//    }
    
//    func validateInputData () throws {
//
//        // check username
//        let phoneValdationError = ValidationMenager.validateForm(signUpModel: self.registrat)
//        if nil != phoneValdationError {
//            throw phoneValdationError
//        }
////                if self.registrationForm.phoneNumber
////                guard let item = inventory[name]
////                    else {
////                    throw VendingMachineError.invalidSelection
////                }
//        return true
//    }
    
    
    
    
     // MARK: - KEYBOARD Notification
    
    
    

    
    
    
    // MARK: - SEND REGISTRATION DATA
  
    

        
     
    
    @IBAction func sendRegistrationData(_ sender: Any) {
        
        

        
//        ValidationMenager.validateForm(signUpModel: .init(userName: registrationView.firstNameTextFild.text, userLastName: registrationView.lastNameTxtFild.text!, userPassword: registrationView.phoneNumberTxtFild.text!, userRepassword: registrationView.passwordTxtFild.text!, mobile: registrationView.rePasswordTxtFild.text!))
//        var ime: String = registrationView.firstNameTextFild.text!
//        var prezime = registrationView.lastNameTxtFild.text!
//        var telefon: String = registrationView.phoneNumberTxtFild.text!
//
        
    
        
        
//        DispatchQueue.global(.global(qos: )) {
      
    
        print("ime")
        
        
    }
    
    // MARK: - Terms and information button func
    
    @IBAction func checkBoxTapped(_ sender: UIButton) {
        
        // animation for chckbox
        
//        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
//            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
//        }) { (success) in
//            sender.isSelected = !sender.isSelected
//            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
//                sender.transform = .identity
//            }, completion: nil)
//        }
        // default chckbox
        
        if sender.isSelected {
         sender.isSelected = false
         } else {
         sender.isSelected  = true
         }
        
    }
    @IBAction func chanelListTap(_ sender: Any) {
        
        print("Spisak kanla")
        
        
    }
    
    @IBAction func aboutUsTap(_ sender: Any) {
//        performSegue(withIdentifier: "openAboutUS", sender: AnyObject.self)
        print("O nama")
        
    }
    
    @IBAction func supportTap(_ sender: Any) {
//          performSegue(withIdentifier: "openSupport", sender: AnyObject.self)
        print("Podrska")
    }
    @IBAction func termsOfUsingTap(_ sender: Any) {
        
//          performSegue(withIdentifier: "openTerms", sender: AnyObject.self)
        print("Uslovi koriscenja")
        
    }
    
    @IBAction func homePageTap(_ sender: Any) {
        
//        performSegue(withIdentifier: "openHomePage", sender: AnyObject.self)
        
        print("Početna strana")
    }
    
       func validateForm(signUpModel: FormValidationModel) throws {
        
        registrationForm.firstName = registrationView.firstNameTextFild.text
        registrationForm.lastName = registrationView.lastNameTxtFild.text
        registrationForm.phoneNumber = registrationView.phoneNumberTxtFild.text
        registrationForm.password = registrationView.passwordTxtFild.text
        registrationForm.confirmPassword = registrationView.rePasswordTxtFild.text
        
       
   
//}


        

    

    
    
    
    
    
    
    
    
     

