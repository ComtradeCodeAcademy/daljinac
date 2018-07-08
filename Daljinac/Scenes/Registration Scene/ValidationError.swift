//
//  ValidationError.swift
//  Daljinac
//
//  Created by O on 7/6/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation

  struct ValidationError {
    var errorString: String!
    var errorCode: Int!
    
    init(code: Int, message: String) {
        errorString = message
        errorCode = code
    }
    struct ErrorCodes {
        static let errorTitleEmptyText = "Nepoptpuna forma"
        static let errorTitleInvalidPassword = 3006
        static let errorTitleInvalidRepassword = 3005
        static let errorTitleInvalidMobilNo = 3008
        static let errorTitleInvalidName = 3010
        static let errorTitleInvalidLastName = 3004
        static let errorTitleInvalidActivacionCode = 3001
        static let errorTitleInvalidEmail = 3002
    }
    
    struct ErrorMessages {
        
        static let msgEmptyName = "Unesite vaše ime"
        static let msgInvalidName = "Neispravno uneto ime"
        static let msgEmptyLastName = "Unesite Vase prezime"
        static let msgInvalidLastName = "Neispravno uneto prezime"
        static let msgEmptyPassword = "Unesite lozinku"
        static let msgEmptyConfirmPassword = "Unesite potvrdu lozinke"
        static let msgInvalidPassword = "Lozinka mora da sadrzi 8 karaktera"
        static let msgInvalidRepassword = "Lozinka se ne poklapa"
        static let msgInvalidConfirmPassword = "Lozinka se ne poklapa"
        static let msgEmptyEmail = "Unesite Vasu email adresu"
        static let msgInvalidEmail = "Neispravna email adresa"
        static let msgEmptyMobilNo = "Unesite broj mobilnog telefona"
        static let msgInvalidMobilNo = "Neispravan broj mobilnog telefona"
        static let msgEmptuActivationCode = "Unesite aktivacioni kod"
        static let msdInvalidRegistration = "Došlo je do greške prilikom logovanja"
        
    }
    
    
}
