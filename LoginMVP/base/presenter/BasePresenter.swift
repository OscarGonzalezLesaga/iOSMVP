//
//  BasePresenter.swift
//  LoginMVP
//
//  Created by ogonzlle on 3/9/18.
//  Copyright © 2018 ogonzlle. All rights reserved.
//

import Foundation

class BasePresenter<V: BaseMVPView>{
    
    var view: V?
    
}

extension BasePresenter : BaseMVPPresenter{
    
    
    func detachView() {
        self.view = nil
    }
    
    func attachView(view: BaseMVPView?) {
        self.view = view as? V
    }
    
    func getView() -> BaseMVPView? {
        return self.view
    }
    
    
}
