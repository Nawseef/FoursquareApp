//
//  CustomeLoginButton.swift
//  Foursquare
//
//  Created by Anusree K Babu on 26/06/21.
//

import UIKit

class CustomLoginButton: UIButton {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.setCoustomButtonProperties()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        self.setCoustomButtonProperties()
    }

    func setCoustomButtonProperties() {
        
        self.backgroundColor = UIColor.clear
        self.titleLabel?.font = UIFont(name: "AvenirBook", size: 15)
        self.setTitleColor(UIColor.textFieldTextColor(), for: .normal)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.textFieldTextColor().cgColor
        self.layer.cornerRadius = 8
    }

}
