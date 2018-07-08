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
    var registrationForm = FormValidationModel(userName: "Darko", userLastName: "Batur", userPassword: "22222", userRepassword: "22222", mobile: "0642315939", terms: true)
 
    
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
        
        do {
            try? registration()
        } catch RegistrationError.emptyFirstName {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgEmptyName, vc: self)
        } catch RegistrationError.emptyLastName {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgEmptyLastName, vc: self)
        } catch RegistrationError.emptyPhoneNumber {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgEmptyMobilNo, vc: self)
        } catch RegistrationError.emptyPassword {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgEmptyPassword, vc: self)
        } catch RegistrationError.emptyConfirmPassword {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgEmptyConfirmPassword, vc: self)
        }
        catch RegistrationError.invalidFirstName {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgInvalidName, vc: self)
        } catch RegistrationError.invalidLastName {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgInvalidLastName, vc: self)
        } catch RegistrationError.invalidPhone {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgInvalidMobilNo, vc: self)
        } catch RegistrationError.invalidPassword {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgInvalidPassword, vc: self)
        } catch RegistrationError.invalidConfirmPassword {
            Alert.showBasic(title: "", message: ValidationError.ErrorMessages.msgInvalidConfirmPassword, vc: self)
        }
        
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
    
       func registration() throws {
        
        registrationForm.firstName = registrationView.firstNameTextFild.text
        registrationForm.lastName = registrationView.lastNameTxtFild.text
        registrationForm.phoneNumber = registrationView.phoneNumberTxtFild.text
        registrationForm.password = registrationView.passwordTxtFild.text
        registrationForm.confirmPassword = registrationView.rePasswordTxtFild.text
      
        if (registrationForm.firstName?.isEmpty)! {
            throw RegistrationError.emptyFirstName
        }
        if (registrationForm.lastName?.isEmpty)! {
            throw RegistrationError.emptyLastName
        }
        if (registrationForm.phoneNumber?.isEmpty)! {
            throw RegistrationError.emptyPhoneNumber
        }
        if (registrationForm.password?.isEmpty)! {
            throw RegistrationError.emptyPassword
        }
        if (registrationForm.confirmPassword?.isEmpty)! {
            throw RegistrationError.emptyConfirmPassword
        }
        if registrationForm.confimTerms != registrationView.termsButton.isSelected {
            throw RegistrationError.termsUnCheck
        }
        if !(registrationForm.firstName?.isValidName)! {
            throw RegistrationError.invalidFirstName
        }
        if !(registrationForm.lastName?.isValidLastName)! {
            throw RegistrationError.invalidLastName
        }
        if !(registrationForm.phoneNumber?.isValidNumber)! {
            throw RegistrationError.invalidPhone
        }
        if !(registrationForm.password?.isValidPassword)! {
            throw RegistrationError.invalidPassword
        }
        if !(registrationForm.confirmPassword?.isValidConfirmPassword)! {
            throw RegistrationError.invalidConfirmPassword
        }
      
        
}
       
   
}


        

    

    
    
    
    
    
    
    
    
     

