//
//  ViewModel.swift
//  LoginMVVM
//
//  Created by affetta on 05.10.2022.
//

import Foundation
import UIKit.UIColor

class ViewModel{
    var statusText = Dynamic("")
    var statucColor = Dynamic(UIColor.white)
    func userButtonPressed(login : String, password : String){
        if login != User.logins[0].login || password != User.logins[0].password{
            statusText.value = "Log in failed"
            statucColor.value = UIColor.red
        }else{
            statusText.value = "Succes log in"
            statucColor.value = UIColor.green
        }
    }
}
