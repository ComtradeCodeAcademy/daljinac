//
//  FormValidationModel.swift
//  Daljinac
//
//  Created by O on 7/6/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation


struct  FormValidationModel {
    var firstName: String?
    var lastName: String?
    var phoneNumber: String?
    var email: String?
    var activationCode: String?
    var password: String?
    var repassword: String?



    init(userName: String, userLastName: String?,userPassword: String, userRepassword: String, userEmail: String, mobile: String, code: String) {
 
        firstName = userName
        lastName = userLastName
        phoneNumber = mobile
        email = userEmail
        activationCode = code
        password = userPassword
        repassword = userRepassword
    
    }
    
}
