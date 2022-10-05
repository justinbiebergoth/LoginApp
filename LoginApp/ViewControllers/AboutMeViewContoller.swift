//
//  AboutMeViewContoller.swift
//  LoginApp
//
//  Created by hiirari on 05.10.2022.
//

import UIKit

class AboutMeViewContoller: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = Person.getPerson().name
        
        
    }
    
}
