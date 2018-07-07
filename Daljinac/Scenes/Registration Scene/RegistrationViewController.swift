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
    var registrationForm : FormValidationModel!
    
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
    
     // MARK: - KEYBOARD Notification
    
    
    
    
     
    
    
    
    // MARK: - SEND REGISTRATION DATA
    
    
    @IBAction func sendRegistrationData(_ sender: Any) {
        
       
//        DispatchQueue.global(.global(qos: )) {
//        registrationForm.firstName = registrationView.firstNameTextFild.text
//        registrationForm.lastName = registrationView.lastNameTxtFild.text
//        registrationForm.phoneNumber = registrationView.phoneNumberTxtFild.text
//        registrationForm.password = registrationView.passwordTxtFild.text
//        registrationForm.repassword = registrationView.rePasswordTxtFild.text
//        
        print("dare je car")
        
        
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
}


        

    

    
    
    
    
    
    
    
    
     

