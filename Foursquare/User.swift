//
//  User.swift
//  Foursquare
//
//  Created by Anusree K Babu on 26/06/21.
//

import Foundation

class User {
    
    var eMail: String
    var mobileNumber: String
    var password: String
    
    init(eMail: String, mobileNumber: String, password: String){
        
        self.eMail = eMail
        self.mobileNumber = mobileNumber
        self.password = password
    }
}
