//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by hiirari on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeNameLabel: UILabel!
     
    var user = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewBackground()
        welcomeNameLabel.text = "Welcome, \(user)!"
        
    }
    
    private func setupViewBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.purple.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
