//
//  User.swift
//  LoginApp
//
//  Created by hiirari on 06.10.2022.
//

import Foundation

struct User {
    let user: String
    let password: String
    let person: Person?
    
    static func getUser() -> User{
        User(user: "Sonya", password: "qwerty", person: nil)
    }
}
