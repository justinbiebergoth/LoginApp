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
    
    private let user = User.getUser().user
    private let password = User.getUser().password
    
    private let name = Person.getPerson().name
    private let moreInfo = Person.getPerson().moreInfo
    
    
    override func viewDidLoad() {
        userNameTF.text = user
        passwordTF.text = password
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let homeVC = viewController as? WelcomeViewController {
                homeVC.user = user
            } else if let aboutMeVC = viewController as? AboutMeViewContoller {
                aboutMeVC.nameLabel.text = name
            } else if let moreAboutMeVC = viewControllers as? MoreInfoViewController {
                moreAboutMeVC.moreInfoLabel.text = moreInfo
            }
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotUserButtonAction(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "💡 Friendly remind:", and: "Your name is \(user) ")
        :  showAlert(with: "💡 Friendly remind:", and: "Your pasword is \(password) ")
    }
    
    @IBAction func loginButtonPressed() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                with: "❌",
                and: "User Name or Password is wrong",
                passwordTF: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String, passwordTF: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in passwordTF?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
