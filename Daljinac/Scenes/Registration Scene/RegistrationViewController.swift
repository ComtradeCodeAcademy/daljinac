//
//  RegistrationViewController.swift
//  Daljinac
//
//  Created by O on 6/20/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var registrationView: RegistrationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       registrationView.updateUI()
      
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // MARK: - DATA VALIDATION
    
    
    
    
    
    
    // MARK: - SEND REGISTRATION DATA
    
    
    @IBAction func sendRegistrationData(_ sender: Any) {
        
        print("dare je car")
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
     
}
