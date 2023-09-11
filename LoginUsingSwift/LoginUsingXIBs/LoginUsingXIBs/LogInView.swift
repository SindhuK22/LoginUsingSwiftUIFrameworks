//
//  LogInView.swift
//  LoginUsingXIBs
//
//  Created by Sindhu K on 09/09/23.
//

import UIKit

class LogInView: UIView {

    @IBOutlet weak var lblSignIn: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!  
    @IBOutlet weak var logInButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let viewFromXib = Bundle.main.loadNibNamed("LogInView", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)

        // Set up text field delegates and login button state
                userNameTextField.delegate = self
                passwordTextField.delegate = self
                logInButton.isEnabled = false
                passwordTextField.isSecureTextEntry = true // Hide password characters
    }
    
}

extension LogInView: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Check if either the username or password text field has text
        let isUsernameEmpty = userNameTextField.text?.isEmpty ?? true
        let isPasswordEmpty = passwordTextField.text?.isEmpty ?? true
        
        // Enable the login button if either the username or password is not empty
        logInButton.isEnabled = !isUsernameEmpty || !isPasswordEmpty
        
        return true
    }
}
