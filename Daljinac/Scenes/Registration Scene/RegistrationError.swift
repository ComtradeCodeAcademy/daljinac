//
//  RegistrationError.swift
//  Daljinac
//
//  Created by O on 7/8/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation


  enum RegistrationError: Error {
    
    case emptyFirstName
    case emptyLastName
    case emptyPhoneNumber
    case emptyPassword
    case emptyConfirmPassword
    case invalidFirstName
    case invalidLastName
    case invalidPassword
    case invalidConfirmPassword
    case invalidPhone
    case termsUnCheck
   
    
}
