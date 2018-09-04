//
//  HomeViewController.swift
//  LoginMVP
//
//  Created by Oscar Gonzalez on 4/9/18.
//  Copyright © 2018 ogonzlle. All rights reserved.
//

import Foundation
import UIKit

class HomeVIewController : UIViewController{
    @IBOutlet var homeLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var helloLabel: UILabel!
    
    override func viewDidLoad() {
        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let name = nameTextField.text
        helloLabel.text = "Hola \(name ?? "desconocido"), como estás corazón"
    }
}
