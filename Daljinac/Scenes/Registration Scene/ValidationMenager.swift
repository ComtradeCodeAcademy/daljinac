//
//  ValidationMenager.swift
//  Daljinac
//
//  Created by O on 7/6/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation

extension  String  {

//MARK: validate Mobile number

 
        var   isValidNumber: Bool {
        let regexMobNo = "^[0-9+]{6,15}$"
        let mobileNoTest = NSPredicate(format: "SELF MATCHES %@", regexMobNo)
        return  mobileNoTest.evaluate(with: self)
            
                     }

  //MARK: validate FirstName

   
    
        var isValidName: Bool {
        let regexNameType = "^[a-zA-Z]+$"
        
        let nameTest = NSPredicate(format: "SELF MATCHES %@", regexNameType)
        return nameTest.evaluate(with: self)
            
                     }
    
    //MARK: validate LastName


            var isValidLastName: Bool {
                
            let regexLastNameType = "^[a-zA-Z]+$"
            let lastNameTest = NSPredicate(format: "SELF MATCHES %@", regexLastNameType)
            return lastNameTest.evaluate(with: self)
                          }
    
        //MARK: validate password
    // Password must be more than 6 characters, with at least one capital, numeric or special character
    
            var isValidPassword: Bool {
            let regexPasswordType = " ^.*(?=.{6,})(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*\\d)|(?=.*[!#$%&?]).*$ "
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", regexPasswordType)
            return  passwordTest.evaluate(with: self)
                             }
    
            //MARK: validate ConfirmPassword
    
            
            var isValidConfirmPassword: Bool {
            let regexConfirmPassword = " ^.*(?=.{6,})(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*\\d)|(?=.*[!#$%&?]).*$ "
            let confirmPasswordTest = NSPredicate(format:"SELF METCH%@", regexConfirmPassword)
            return confirmPasswordTest.evaluate(with: self)
                
                           }
    
    
    
    
}
