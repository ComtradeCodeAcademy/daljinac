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
    var registrationForm = FormValidationModel(userName: "", userLastName: "", userPassword: "", userRepassword: "", mobile: "", terms: false)
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
       registrationView.updateUI()
      
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
     // MARK: - KEYBOARD Notification
    
    
    

    
    
    
    // MARK: - SEND REGISTRATION DATA
  
    

        
     
    
    @IBAction func sendRegistrationData(_ sender: Any) {
        
        do {
            try registration()
        } catch RegistrationError.emptyFirstName {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleEmptyText, message: ValidationError.ErrorMessages.msgEmptyName, vc: self)
        } catch RegistrationError.emptyLastName {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleEmptyText, message: ValidationError.ErrorMessages.msgEmptyLastName, vc: self)
        } catch RegistrationError.emptyPhoneNumber {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleEmptyText, message: ValidationError.ErrorMessages.msgEmptyMobilNo, vc: self)
        } catch RegistrationError.emptyPassword {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleEmptyText, message: ValidationError.ErrorMessages.msgEmptyPassword, vc: self)
        } catch RegistrationError.emptyConfirmPassword {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleEmptyText, message: ValidationError.ErrorMessages.msgEmptyConfirmPassword, vc: self)
        }
        catch RegistrationError.invalidFirstName {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleInvalidName, message: ValidationError.ErrorMessages.msgInvalidName, vc: self)
        } catch RegistrationError.invalidLastName {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleInvalidLastName, message: ValidationError.ErrorMessages.msgInvalidLastName, vc: self)
        } catch RegistrationError.invalidPhone {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleInvalidMobilNo, message: ValidationError.ErrorMessages.msgInvalidMobilNo, vc: self)
        } catch RegistrationError.invalidPassword {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleInvalidPassword, message: ValidationError.ErrorMessages.msgInvalidPassword, vc: self)
        } catch RegistrationError.invalidConfirmPassword {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleInvalidConfirmPassword, message: ValidationError.ErrorMessages.msgInvalidConfirmPassword, vc: self)
        } catch {
            Alert.showBasic(title: ValidationError.ErrorTitle.errorTitleInvalidRegistration, message: ValidationError.ErrorMessages.msgInvalidRegistration, vc: self)
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

    func textFieldDidEndEditing(_ textField: UITextField)  {

        if textField == registrationView.firstNameTextFild {
            self.registrationForm.firstName = textField.text
            print(registrationForm.firstName ?? "prazan")
        }
        if textField == registrationView.lastNameTxtFild {
            self.registrationForm.lastName = textField.text
        }
        if textField == registrationView.phoneNumberTxtFild {
            self.registrationForm.phoneNumber = textField.text
        }
        if textField == registrationView.passwordTxtFild {
            self.registrationForm.password = textField.text
        }
        if textField == registrationView.rePasswordTxtFild {
            self.registrationForm.confirmPassword = textField.text
        }

    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//        switch(textField.tag){
//        case 1:
//           self.registrationForm.firstName = registrationView.firstNameTextFild.text
//        case 2:
//          self.registrationForm.lastName = registrationView.lastNameTxtFild.text
//        case 3:
//           self.registrationForm.phoneNumber = registrationView.phoneNumberTxtFild.text
//        case 4:
//          self.registrationForm.password = registrationView.passwordTxtFild.text
//         case 5:
//          self.registrationForm.confirmPassword = registrationView.rePasswordTxtFild.text
//        default:
//            print("any other")
//        }
//
//        textField.resignFirstResponder()
//
//        return true
//    }
    
       // MARK: - DATA VALIDATION
    
       func registration() throws {
     // Chack is txtFild isEmpty
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
       
        // Chack is textFild isValid with regex String Extension
        
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
        // Chack is it Terms btn are selected
        
        if registrationForm.confimTerms != registrationView.termsButton.isSelected {
            throw RegistrationError.termsUnCheck
        }
     
        
}
  
}


        

    

    
    
    
    
    
    
    
    
     

