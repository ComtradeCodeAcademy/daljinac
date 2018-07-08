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
    var password: String?
    var confirmPassword: String?

    



    init(userName: String?, userLastName: String,userPassword: String, userRepassword: String, mobile: String) {
 
        firstName = userName
        lastName = userLastName
        phoneNumber = mobile
        password = userPassword
        confirmPassword = userRepassword
    
    }
    
}
