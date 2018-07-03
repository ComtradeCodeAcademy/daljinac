//
//  RegistrationView.swift
//  Daljinac
//
//  Created by O on 6/20/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import UIKit

class RegistrationView: UIView, UITextFieldDelegate {

    @IBOutlet var registrationView: RegistrationView!
    @IBOutlet weak var telegrafLogo: UIButton!
    @IBOutlet weak var daljinacLogo: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var daljinacLink: UILabel!
    @IBOutlet weak var firstNameTextFild: UITextField!
    @IBOutlet weak var lastNameTxtFild: UITextField!
    @IBOutlet weak var phoneNumberTxtFild: UITextField!
    @IBOutlet weak var passwordTxtFild: UITextField!
    @IBOutlet weak var rePasswordTxtFild: UITextField!
    @IBOutlet weak var termsLbl: UILabel!
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var ChanelListButton: UIButton!
    @IBOutlet weak var aboutUsButton: UIButton!
    @IBOutlet weak var supportButton: UIButton!
    @IBOutlet weak var usingTermsButton: UIButton!
    @IBOutlet weak var priceLbl: UILabel!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
      
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("RegistrationView", owner: self, options: nil)
        addSubview(registrationView)
        registrationView.frame = self.bounds
        registrationView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
        func updateUI() {
            
        self.firstNameTextFild.placeholder = RegistrationData.firstName
        self.lastNameTxtFild.placeholder = RegistrationData.lastName
        self.passwordTxtFild.placeholder = RegistrationData.password
        self.rePasswordTxtFild.placeholder = RegistrationData.rePassword
        self.phoneNumberTxtFild.placeholder = RegistrationData.phoneNumber
        self.daljinacLink.text = "www.daljinac.com"
        self.titleLable.text = "NAJVEVEĆI IZBOR KANALA"
        
        
        
    }
    
   
 
    
  
  
    
    
}



