//
//  User.swift
//  LoginMVVM
//
//  Created by affetta on 05.10.2022.
//

import Foundation
struct User{
    let login : String?
    let password : String?
}
extension User {
    static var logins = [
    User(login: "zrada", password: "12345")
    ]
}
