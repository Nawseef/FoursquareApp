
import UIKit

class LoginScreenBackground: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()
    }
    
    
    func configureView() {
        
        if let backgroundImage = UIImage(named: "login_bg") {
            self.layer.contents = backgroundImage.cgImage
            print("hhh")
        }
        
    }
    
}
