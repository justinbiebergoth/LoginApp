//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by hiirari on 05.10.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet var moreInfoLabel: UILabel!
    
    var moreInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreInfoLabel.text = Person.getPerson().moreInfo
    }
    

}
