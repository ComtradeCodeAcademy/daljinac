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
    
    
    @IBAction func checkBoxTapped(_ sender: UIButton) {
        
//        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
//            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
//        }) { (success) in
//            sender.isSelected = !sender.isSelected
//            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
//                sender.transform = .identity
//            }, completion: nil)
//        }
        
        if sender.isSelected {
         sender.isSelected = false
         } else {
         sender.isSelected  = true
         }
        
    }
    
    
        
    }
    

    
    
    
    
    
    
    
    
     

