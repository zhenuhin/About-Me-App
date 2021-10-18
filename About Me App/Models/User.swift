//
//  User.swift
//  About Me App
//
//  Created by Александр Женухин on 16.10.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    
    static func getUserData() -> User {
        return User(login: "User", password: "Password")
    }
}
