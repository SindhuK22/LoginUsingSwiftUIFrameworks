//
//  ViewController.swift
//  LoginUsingStoryBoard
//
//  Created by Sindhu K on 08/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Disable the login button by default
               loginButton.isEnabled = false
               
               // Add targets to text fields to monitor text changes
               usernameTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
               passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        // Set the password field to secure text entry
        passwordTextField.isSecureTextEntry = true
    }
    @IBAction func loginButtonTapped(_ sender: UIButton) {
            // Handle login logic here
            let username = usernameTextField.text ?? ""
            let password = passwordTextField.text ?? ""
            
        
        if isValid(username: username, password: password) {
                    // Perform login action
                    // You can implement your login logic here
                    print("Login successful")
                    print("Username: \(username)")
                    print("Password: \(password)")
                } else {
                    print("Invalid username or password")
                }
        }
        
        @objc func textFieldDidChange(_ textField: UITextField) {
            // Enable the login button only if both text fields have text
            let usernameText = usernameTextField.text ?? ""
            let passwordText = passwordTextField.text ?? ""
            loginButton.isEnabled = !usernameText.isEmpty && !passwordText.isEmpty
        }
    
    func isValid(username: String, password: String) -> Bool {
           // You can implement your own validation logic here
           // For example, check if the username and password meet certain criteria
           // This is just a simple example
           return !username.isEmpty && !password.isEmpty
       }
       }
   


