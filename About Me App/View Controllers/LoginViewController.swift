//
//  WelcomeViewController.swift
//  About Me App
//
//  Created by Александр Женухин on 13.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUserData()
    
    // MARK: - IB Actions
    @IBAction func loginButtonTapped() {
        checkInputData()
    }
    
    @IBAction func forgotLoginTapped() {
        showAlert(title: "Oops...", message: "Your login is: \(user.login)")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(title: "Oops...", message: "Your password is: \(user.password)")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        welcomeVC.user = user
    }
    
}

// Check input data
extension LoginViewController {
    private func checkInputData() {
        guard let inputLogin = loginTextField.text, !inputLogin.isEmpty else {
            showAlert(title: "Login is empty", message: "Plesase, enter your login")
            return
        }
        guard let inputPassword = passwordTextField.text, !inputPassword.isEmpty else {
            showAlert(title: "Password is empty", message: "Plesase, enter your password")
            return
        }
        if loginTextField.text == user.login && passwordTextField.text == user.password {
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        } else {
            showAlert(title: "Wrong input", message: "Try to login once more 😉")
        }
    }
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Keyboard Settings
extension LoginViewController {
    
    // Hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    
}
