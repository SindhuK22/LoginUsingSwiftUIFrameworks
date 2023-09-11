//
//  ViewController.swift
//  LoginUsingXIBs
//
//  Created by Sindhu K on 09/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logInView: LogInView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Set up login button action
               logInView.logInButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
          
        let loginView = LogInView(frame: CGRect(x:5, y: 40.0, width: 10.0, height: 50.0))
        loginView.lblSignIn.text = "Sign In"
        self.view.addSubview(loginView)
    }

    @objc func loginButtonTapped() {
            let username = logInView.userNameTextField.text ?? ""
            let password = logInView.passwordTextField.text ?? ""
            
            // Print the entered data to the console
            print("Username: \(username)")
            print("Password: \(password)")
            
            // Add your login logic here, e.g., authenticate the user
            // Once authenticated, you can perform further actions
        }

}

