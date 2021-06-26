//
//  AvenirBookFontWithSize20.swift
//  Foursquare
//
//  Created by Anusree K Babu on 25/06/21.
//

import Foundation
import UIKit

class AvenirBookFontWithSize20: UITextField {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.configureTextField()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        self.configureTextField()
    }
    
    func configureTextField(){
        
        self.backgroundColor = UIColor.clear
        self.textColor = UIColor.textFieldTextColor()
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.textFieldTextColor().cgColor
        layer.addSublayer(bottomLine)
        self.borderStyle = .none
        self.font = UIFont(name: "AvenirBook", size: 15)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        
//        var newRect = bounds
//        newRect.origin.x = 20
//        newRect.size.width = bounds.size.width - 50
//        newRect.inset(by: UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0))
//        return newRect
        return bounds.inset(by: UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20))
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        
//        var newRect = bounds
//        newRect.origin.x = 22
//        newRect.size.width = bounds.size.width - 44
//        newRect.inset(by: UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0))
//        return newRect
        return bounds.inset(by: UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20))
    }
}
