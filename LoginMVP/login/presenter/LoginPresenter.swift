//
//  LoginPresenter.swift
//  LoginMVP
//
//  Created by ogonzlle on 3/9/18.
//  Copyright © 2018 ogonzlle. All rights reserved.
//

import Foundation

class LoginPresenter<V: LoginView> : BasePresenter<V>, LoginMVPPresenter{
    
    func validCredentailsLogin(mail: String?, password: String?) {
        if(mail == "oscargonles@gmail.com" && password == "PolloCampero"){
            view?.manageValidLogin()
        }else{
            view?.manageErrorLogin()
        }
    }
    
    
}
