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
    
    var subViewHeight: CGFloat = 0.0
    var IsheightNotSet: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    print("newtry")
        print("123")
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
}


