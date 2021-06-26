//
//  UIAlertController.swift
//  Foursquare
//
//  Created by Anusree K Babu on 26/06/21.
//

import Foundation

import UIKit

extension UIAlertController {
    
    static func alert(title: String, message: String, parentViewController: UIViewController ) {
         let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
         parentViewController.present(alert, animated: true)
     }
}
