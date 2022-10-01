//
//  ViewController.swift
//  LoginApp
//
//  Created by hiirari on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.isEnabled = false

    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeName = userNameTF.text
    }
    
    @IBAction func forgotUserButtonAction(_ sender: UIButton) {
        showAlert(with: "💡 Friendly remind:", and: "Your name is Sonya ")
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: UIButton) {
        showAlert(with: "💡 Friendly remind:", and: "Your pasword is qwerty ")
    }
    
    @IBAction func showLoginButton(_ sender: UITextField) {
        if userNameTF.text != "" && passwordTF.text != "" {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
    }
    
    @IBAction func loginButtonPressed() {
        let userName = String(userNameTF.text ?? "")
        let password = String(passwordTF.text ?? "")
        
        if userName != "Sonya" || password != "qwerty" {
            showAlert(with: "❌", and: "User Name or Password is wrong")
        }

    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
        loginButton.isEnabled = false
    }
}

    extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
