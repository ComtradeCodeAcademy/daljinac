//
//  ValidationError.swift
//  Daljinac
//
//  Created by O on 7/6/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation

struct ValidationError {
    var errorMessage: String!
    var errorCode: Int!
    
    init(code: Int, message: String) {
        errorMessage = message
        errorCode = code
    }
    struct ErrorCodes {
        static let errorCodeEmptyText = 3003
        static let errorCodeInvalidPassword = 3006
        static let errorCodeInvalidRepassword = 3005
        static let errorInvalidMobilNo = 3008
        static let errorCodeInvalidName = 3010
        static let errorCodeInvalidLastName = 3004
        static let errorCodeInvalidActivacionCode = 3001
        static let errorCodeInvalidEmail = 3002
    }
    
    struct ErrorMessage {
        
        static let msgEmptyName = "Unesite vaše ime"
        static let msgInvalidName = "Neispravno uneto ime"
        static let msgEmptyLastName = "Unesite Vase prezime"
        static let msgInvalidLastName = "Neispravno uneto prezime"
        static let msgEmptyPassword = "Unesite lozinku"
        static let msgInvalidPassword = "Lozinka mora da sadrzi 8 karaktera"
        static let msgInvalidRepassword = "Lozinka se ne poklapa"
        static let msgEmptyEmail = "Unesite Vasu email adresu"
        static let msgInvalidEmail = "Neispravna email adresa"
        static let msgEmptyMobilNo = "Unesite broj mobilnog telefona"
        static let msgInvalidMobilNo = "Neispravan broj mobilnog telefona"
        static let msgEmptuActivationCode = "Unesite aktivacioni kod"
        static let msdInvalidActivationCode = "Neispravan aktivacioni kod"
        
    }
    
    
}
