//
//  BaseMVPPresenter.swift
//  LoginMVP
//
//  Created by ogonzlle on 3/9/18.
//  Copyright © 2018 ogonzlle. All rights reserved.
//

import Foundation

protocol BaseMVPPresenter {
    func attachView(view: BaseMVPView?)
    func detachView()
    func getView() -> BaseMVPView?
}
