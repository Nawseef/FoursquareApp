//
//  TextValidatorUtility.swift
//  Foursquare
//
//  Created by Anusree K Babu on 26/06/21.
//

import Foundation

class TextValidatorUtility {
    
    func isValidMobileNumber(number: String) -> Bool {
        
        let invalidCharacters = CharacterSet(charactersIn: "+-()0123456789").inverted
        
        return (number.rangeOfCharacter(from: invalidCharacters) == nil)
    }
    
    func isValidEmail(id: String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailText: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        if emailText.evaluate(with: id) {
            return true
        } else {
            return false
        }
    }
}
