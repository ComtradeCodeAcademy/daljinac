//
//  ValidationMenager.swift
//  Daljinac
//
//  Created by O on 7/6/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation

struct ValidationModel {

static private let regexEmail = "[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}"
static private let regexMobNo = "^[0-9]{6,15}$"
static private let regexNameType = "^[a-zA-Z]+$"
static private let regxLastNameType = "^[a-zA-Z]+$"
// Password must be more than 6 characters, with at least one capital, numeric or special character
static private let regxPassword = " ^.*(?=.{6,})(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*\\d)|(?=.*[!#$%&?]).*$ "
static private let regxRepassword = regxPassword


private static func validateForm(signUpModel: FormValidationModel) -> ValidationError? {
    
    var validationError: ValidationError? = nil
    validationError = validateEmailId(email: signUpModel.email!)
    if validationError != nil {
        
        return validationError
    }
    
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

//MARK: validate emailID

private static func validateEmailId(email: String) -> ValidationError?
{
    var validationError : ValidationError? = nil
    
    if email == ""
    {
        validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeEmptyText, message: ValidationError.ErrorMessages.msgEmptyEmail)
    }
    else {
        let emailTest = NSPredicate(format: "SELF MATCHES %@", regexEmail)
        let matchEmailId = emailTest.evaluate(with: email)
        if(!matchEmailId)
        {
            validationError = ValidationError(code: ValidationError.ErrorCodes.errorCodeInvalidEmail, message: ValidationError.ErrorMessages.msgInvalidEmail)
        }
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

//MARK: validate name

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

}
