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
    var errorTitle: String!
    
    init(code: String, message: String) {
        errorString = message
        errorTitle = code
    }
    struct ErrorTitle {
        static let errorTitleEmptyText = "Nepoptpuna forma"
        static let errorTitleInvalidPassword = "Neispravno uneta lozinka"
        static let errorTitleInvalidConfirmPassword = "Potvrda lozinke neispravna"
        static let errorTitleInvalidMobilNo = "Neispravan broj telefona"
        static let errorTitleInvalidName = "Neispravno uneto ime"
        static let errorTitleInvalidLastName = "Neispravno uneto prezime"
        static let errorTitleInvalidRegistration = "Greška prilikom konekcije"
         static let errorTitleInvalidTerms = "Uslovi korišćenja"
    }
    
    struct ErrorMessages {
        
        static let msgEmptyName = "Unesite vaše ime"
        static let msgInvalidName = "Ime treba da sadrži samo slova"
        static let msgEmptyLastName = "Unesite Vase prezime"
        static let msgInvalidLastName = "Prezime treba da sadrži samo slova"
        static let msgEmptyPassword = "Unesite lozinku"
        static let msgEmptyConfirmPassword = "Unesite potvrdu lozinke"
        static let msgInvalidPassword = "Lozinka mora da sadrzi 8 karaktera"
        static let msgInvalidRepassword = "Lozinka se ne poklapa, molimo Vas pokušajte ponovo"
        static let msgInvalidConfirmPassword = "Lozinka se ne poklapa"
        static let msgEmptyEmail = "Unesite Vasu email adresu"
        static let msgInvalidEmail = "Neispravna email adresa"
        static let msgEmptyMobilNo = "Unesite broj mobilnog telefona"
        static let msgInvalidMobilNo = "Potrebno je uneti pozivni br zemlje i ispavan br mobilnog, molim Vas pokušajte ponovo "
        static let msgInvalidRegistration = "Došlo je do greške prilikom registracije, molimo Vas pokušajte kasnije"
        static let msgerrorTitleInvalidTerms = "Molimo Vas da pažljivo pročitate uslove korišćenja i obavezno popunite polje"
    }
    
    
}
