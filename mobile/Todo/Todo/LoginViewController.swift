//
//  ViewController.swift
//  Todo
//
//  Created by Khoi Nguyen on 10/9/17.
//  Copyright © 2017 Khoi Nguyen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

 
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func showAlert(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func onLogin(_ sender: UIButton) {
        
        if emailTextField.text == nil
            || emailTextField.text == ""
            || passwordTextField.text == nil
            || passwordTextField.text == "" {
            showAlert(message: "Email and password is nil")
            return
        }
        
        Service.shared.doLogin(name: emailTextField.text! , password: passwordTextField.text!) { [weak self] (user) in
            if let user = user {
                self?.performSegue(withIdentifier: String(describing: TasksViewController.self), sender: nil)
            }else {
                self?.showAlert(message: "User is not exist")
            }
        }
    }
    
}

