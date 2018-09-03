//
//  BaseViewController.swift
//  LoginMVP
//
//  Created by ogonzlle on 3/9/18.
//  Copyright © 2018 ogonzlle. All rights reserved.
//

import Foundation

import UIKit

class BaseViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        //iniFunctionality()
    }
    
    //func iniFunctionality()
}

extension BaseViewController : BaseMVPView{
    func showLoading() {
    
    }
    
    func hideLoading() {
    
    }
    
    
}
