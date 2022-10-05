//
//  PersonalInformation.swift
//  LoginApp
//
//  Created by hiirari on 05.10.2022.
//

import Foundation

struct Person {
    let name: String
    let moreInfo: String
    
    static func getPerson() -> Person {
        Person(name: "some text", moreInfo: "more info blablabla")
    }
}
