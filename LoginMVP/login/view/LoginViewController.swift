//
//  ViewController.swift
//  LoginMVP
//
//  Created by ogonzlle on 3/9/18.
//  Copyright © 2018 ogonzlle. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var mailLabel: UITextField!
    
    @IBOutlet var passwordLabel: UITextField!
    
    let segueLoginHome = "segueLoginHome"
    
    var loginOK: Bool = false
    
    var presenter: LoginPresenter<LoginViewController> = LoginPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        presenter.attachView(view: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerClicked(_ sender: UIButton) {
        presenter.validCredentailsLogin(mail: mailLabel?.text, password: passwordLabel?.text)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case segueLoginHome:
            if(loginOK){
                return true
            }else{
                return false
            }
        default:
            return false
        }
    }
}

extension LoginViewController: LoginView {
    func hideLoading() {
    
    }
    
    func showLoading() {
        
    }
    
    func manageValidLogin() {
        loginOK = true
        self.performSegue(withIdentifier: segueLoginHome, sender: nil)
        /*let alert = UIAlertController(title: "LOGIN", message: "Sus credenciales son correctas", preferredStyle: .alert)
        alert.addAction(UIAlertAction( title: "Aceptar",style: .default,handler: nil))
        self.present(alert, animated: true)*/
    }
    
    func manageErrorLogin() {
        loginOK = false
        let alert = UIAlertController(title: "LOGIN", message: "Sus credenciales no son correctas", preferredStyle: .alert)
        alert.addAction(UIAlertAction( title: "Aceptar",style: .default,handler: nil))
        self.present(alert, animated: true)
    }
    
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

