//
//  LoginMVPView.swift
//  LoginMVP
//
//  Created by ogonzlle on 3/9/18.
//  Copyright © 2018 ogonzlle. All rights reserved.
//

import Foundation

protocol LoginView: NSObjectProtocol, BaseMVPView {
    func showLoading()
    func manageValidLogin()
    func manageErrorLogin()
}
