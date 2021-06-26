//
//  SignUpController.swift
//  Foursquare
//
//  Created by Anusree K Babu on 25/06/21.
//

import UIKit

class SignUpController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var eMailTextField: AvenirBookFontWithSize20!
    @IBOutlet weak var mobileNumberTextField: AvenirBookFontWithSize20!
    @IBOutlet weak var passwordTextField: AvenirBookFontWithSize20!
    @IBOutlet weak var conformPasswordTextField: AvenirBookFontWithSize20!
    
    var subViewHeight: CGFloat = 0.0
    var IsheightNotSet: Bool = false
    var logInViewModel = LogInViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        passwordTextField.isSecureTextEntry = true
        conformPasswordTextField.isSecureTextEntry = true
    }
    
    override func viewDidLayoutSubviews() {
        
        if let view = view as? BackgroundSettingsView {
          view.backgroundImage.frame = self.view.bounds
        }
        
        if (!IsheightNotSet) {
           if (UIDevice.current.orientation.isLandscape ) {
               
               subViewHeight = scrollView.frame.width
               print("Device is in landscape mode")
               IsheightNotSet = true
           } else {
               
               subViewHeight = scrollView.frame.height
               print("Device is in portrait mode")
               IsheightNotSet = true
           }
        }
       
           let height = NSLayoutConstraint(item: contentView ?? "", attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: subViewHeight)
        
        contentView.addConstraint(height)
    }
    
    @IBAction func logIn(_ sender: Any) {
        
        guard let eMail = eMailTextField.text, let mobileNumber = mobileNumberTextField.text, let password = passwordTextField.text, let conformPassword = conformPasswordTextField.text, !eMail.isEmpty, !mobileNumber.isEmpty, !password.isEmpty, !conformPassword.isEmpty else {
            UIAlertController.alert(title: "Sorry!", message: "please enter required fields", parentViewController: self )
            return
        }
        
        if (logInViewModel.isAccountExist(eMail: eMail)) {
           UIAlertController.alert(title: "Sorry!", message: "Account already exist, please login", parentViewController: self)
            return
        }
        
        if (password != conformPassword) {
            UIAlertController.alert(title: "Sorry!", message: "password does not match", parentViewController: self)
            return
        }
    
        logInViewModel.addUserDetails(eMail: eMail, mobileNumber: mobileNumber, password: password)
    
    }
}
