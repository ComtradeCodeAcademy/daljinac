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
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var lastNameView: UIView!
    @IBOutlet weak var phoneView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var repasswordView: UIView!
    
    
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
        // update formView
        self.firstNameTextFild.placeholder = RegistrationData.firstName
        self.lastNameTxtFild.placeholder = RegistrationData.lastName
        self.passwordTxtFild.placeholder = RegistrationData.password
        self.rePasswordTxtFild.placeholder = RegistrationData.rePassword
        self.phoneNumberTxtFild.placeholder = RegistrationData.phoneNumber
        // update title
        self.daljinacLink.text = "www.daljinac.com"
        self.titleLable.text = "NAJVEVEĆI IZBOR KANALA"
        // update checkbox button
        self.termsButton.layer.cornerRadius = CGFloat.init(5)
        self.termsButton.layer.masksToBounds = true
        // update subViews of formView
        self.nameView.layer.cornerRadius = CGFloat.init(8)
        self.lastNameView.layer.cornerRadius = CGFloat.init(8)
        self.phoneView.layer.cornerRadius = CGFloat.init(8)
        self.passwordView.layer.cornerRadius = CGFloat.init(8)
        self.repasswordView.layer.cornerRadius = CGFloat.init(8)
        // update registration button
        self.registrationButton.layer.cornerRadius = CGFloat.init(8)
        self.registrationButton.setTitle("REGISTRUJTE SE", for: .normal)
        // update information stack
        self.ChanelListButton.setTitle("Spisak kanala", for: .normal)
        self.aboutUsButton.setTitle("O nama", for: .normal)
        self.supportButton.setTitle("Podrška", for: .normal)
        
    }
    
   
   
}



