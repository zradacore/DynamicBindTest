//
//  LoginViewController.swift
//  LoginMVVM
//
//  Created by affetta on 05.10.2022.
//

import UIKit


class LoginViewController: UIViewController {

    var viewModel = ViewModel()
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        statusLabel.text = ""
        statusLabel.textColor = .white
    }

    func bindViewModel(){
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        }
        viewModel.statucColor.bind { statusColor in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        }
    }
    @IBAction func signInTapped(_ sender: Any) {
        viewModel.userButtonPressed(login: loginTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    
}
