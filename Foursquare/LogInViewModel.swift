//
//  LoginInViewModel.swift
//  Foursquare
//
//  Created by Anusree K Babu on 26/06/21.
//

import Foundation

class LogInViewModel {
    
    var userDetails: [String: User] = [:]
    
    func addUserDetails(eMail: String, mobileNumber: String, password: String){
        
        let user = User(eMail: eMail, mobileNumber: mobileNumber, password: password)
        userDetails[eMail] = user
    }
    
    func isAccountExist(eMail: String) -> Bool {
        
        if (userDetails.keys.contains(eMail)){
        return true
        } else {
            return false
        }
    }
    
    
}
