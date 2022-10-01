//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by hiirari on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeNameLabel: UILabel!
     
    var welcomeName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewBackground()
        welcomeNameLabel.text = "Welcome, \(welcomeName ?? "User")"
        
    }
    
    @IBAction func logoutButtonDidTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }

    private func setupViewBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.purple.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
