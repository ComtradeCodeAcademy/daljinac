//
//  ValidationMenager.swift
//  Daljinac
//
//  Created by O on 7/6/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation

struct  ValidationMenager {




// Password must be more than 6 characters, with at least one capital, numeric or special character
static private let regexPasswordType = " ^.*(?=.{6,})(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*\\d)|(?=.*[!#$%&?]).*$ "
static private let regexConfirmPassword = regexPasswordType


 


//MARK: validate Mobile number

 static func validateMobileNumber(string: String) -> ValidationError?
{
    var validationError : ValidationError? = nil
    if string == "" {
        validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyMobilNo)
    }
    else {
        //     var   isValidNumber: Bool {
        let regexMobNo = "^[0-9+]{6,15}$"
        let mobileNoTest = NSPredicate(format: "SELF MATCHES %@", regexMobNo)
        let matchMobileNumber = mobileNoTest.evaluate(with: string)
         //            }
        if(!matchMobileNumber)
           
        {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidMobilNo, message: ValidationError.ErrorMessages.msgInvalidMobilNo)
        }
    }
    return validationError
}

  //MARK: validate FirstName

    static func validateNameString(string: String) -> ValidationError?
{
    var validationError : ValidationError? = nil
    if string == "" {
        validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyName)
    }
    else {
        //      var isValidName: Bool {
        let regexNameType = "^[a-zA-Z]+$"
        
        let nameTest = NSPredicate(format: "SELF MATCHES %@", regexNameType)
        let matchNameType = nameTest.evaluate(with: string)
         //            }
        if !matchNameType
    
        {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidName, message: ValidationError.ErrorMessages.msgInvalidName)
        }
    }
    return validationError
}

    //MARK: validate LastName

    static func validateLastNameString(string: String) -> ValidationError?
    {
        var validationError : ValidationError? = nil
        if string == "" {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyLastName)
        }
        else {
            //            var isValidLastName: Bool {
            let regexLastNameType = "^[a-zA-Z]+$"
            let lastNameTest = NSPredicate(format: "SELF MATCHES %@", regexLastNameType)
            let matchNameType = lastNameTest.evaluate(with: string)
              //            }
            if !matchNameType
            {
                validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidLastName, message: ValidationError.ErrorMessages.msgInvalidLastName)
            }
        }
        return validationError
    }
        //MARK: validate password
    
   static func validatePasswordString(string: String) -> ValidationError? {
        
        var validationError : ValidationError? = nil
        if string == "" {
            
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyPassword)
        }
        else {
            //            var isValidPassword: Bool {

            let passwordTest = NSPredicate(format: "SELF MATCHES %@", regexPasswordType)
            let matchPasswordType = passwordTest.evaluate(with: string)
                 //            }
            if !matchPasswordType
            {
                validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidPassword, message: ValidationError.ErrorMessages.msgInvalidPassword)
            }
        
    }
return validationError
        
}
            //MARK: validate ConfirmPassword
    
      static func validateConfirmPasswordString(string: String) -> ValidationError? {
        
        var validationError : ValidationError? = nil
        if string == "" {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyConfirmPassword)
        }
        else {
            //            var isValidConfirmPassword: Bool {
            let confirmPasswordTest = NSPredicate(format:"SELF METCH%@", regexPasswordType)
            let matchConfirmPasswordType = confirmPasswordTest.evaluate(with: string)
               //            }
            if !matchConfirmPasswordType
            {
                validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidPassword, message: ValidationError.ErrorMessages.msgInvalidConfirmPassword)
            }
            
        }
        return validationError
    }
    
    
    
    
}
