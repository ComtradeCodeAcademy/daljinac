//
//  ValidationMenager.swift
//  Daljinac
//
//  Created by O on 7/6/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation

struct ValidationMenager {

static private let regexMobNo = "^[0-9+]{6,15}$"
static private let regexNameType = "^[a-zA-Z]+$"
static private let regexLastNameType = "^[a-zA-Z]+$"
// Password must be more than 6 characters, with at least one capital, numeric or special character
static private let regexPasswordType = " ^.*(?=.{6,})(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*\\d)|(?=.*[!#$%&?]).*$ "
static private let regexConfirmPassword = regexPasswordType


 static func validateForm(signUpModel: FormValidationModel) -> ValidationError? {
    
    var validationError: ValidationError? = nil
    
    validationError = validateNameString(string: signUpModel.firstName!)
    if validationError != nil {
        
        return validationError
    }
    
    validationError = validateMobileNumber(string: signUpModel.phoneNumber!)
    if validationError != nil {
        
        return validationError
    }
      return validationError
}


//MARK: validate Mobile number

 private static func validateMobileNumber(string: String) -> ValidationError?
{
    var validationError : ValidationError? = nil
    if string == "" {
        validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyMobilNo)
    }
    else {
        
        let mobileNoTest = NSPredicate(format: "SELF MATCHES %@", regexMobNo)
        let matchMobileNumber = mobileNoTest.evaluate(with: string)
        if(!matchMobileNumber)
        {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidMobilNo, message: ValidationError.ErrorMessages.msgInvalidMobilNo)
        }
    }
    return validationError
}

//MARK: validate FirstName

private static func validateNameString(string: String) -> ValidationError?
{
    var validationError : ValidationError? = nil
    if string == "" {
        validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyName)
    }
    else {
        
        let nameTest = NSPredicate(format: "SELF MATCHES %@", regexNameType)
        let matchNameType = nameTest.evaluate(with: string)
        if !matchNameType
        {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidName, message: ValidationError.ErrorMessages.msgInvalidName)
        }
    }
    return validationError
}

    //MARK: validate LastName

    private static func validateLastNameString(string: String) -> ValidationError?
    {
        var validationError : ValidationError? = nil
        if string == "" {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyLastName)
        }
        else {
            
            let lastNameTest = NSPredicate(format: "SELF MATCHES %@", regexLastNameType)
            let matchNameType = lastNameTest.evaluate(with: string)
            if !matchNameType
            {
                validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidLastName, message: ValidationError.ErrorMessages.msgInvalidLastName)
            }
        }
        return validationError
    }
        //MARK: validate password
    
    private static func validatePasswordString(string: String) -> ValidationError? {
        
        var validationError : ValidationError? = nil
        if string == "" {
            
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyPassword)
        }
        else {
            
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", regexPasswordType)
            let matchPasswordType = passwordTest.evaluate(with: string)
            if !matchPasswordType
            {
                validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidPassword, message: ValidationError.ErrorMessages.msgInvalidPassword)
            }
        
    }
return validationError
        
}
            //MARK: validate ConfirmPassword
    
    private static func validateConfirmPasswordString(string: String) -> ValidationError? {
        
        var validationError : ValidationError? = nil
        if string == "" {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyConfirmPassword)
        }
        else {
            
            let confirmPasswordTest = NSPredicate(format:"SELF METCH%@", regexPasswordType)
            let matchConfirmPasswordType = confirmPasswordTest.evaluate(with: string)
            if !matchConfirmPasswordType
            {
                validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidPassword, message: ValidationError.ErrorMessages.msgInvalidConfirmPassword)
            }
            
        }
        return validationError
    }
    
}
