//
//  Alert.swift
//  Daljinac
//
//  Created by O on 7/8/18.
//  Copyright © 2018 Pedja Jevtic. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    
    class func showBasic(title: String, message: String, vc: UIViewController) {
        
        let alert = UIAlertController (title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    
}
