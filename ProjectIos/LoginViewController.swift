//
//  LoginViewController.swift
//  ProjectIos
//
//  Created by Matthieu Sukho on 15/02/2018.
//  Copyright © 2018 Matthieu Sukho. All rights reserved.
//

import UIKit

protocol SignInViewDelegate {
    func LoginDidTapped(email: String?, password: String?)
}

class LoginViewController: UIViewController, SignInViewDelegate {
    var signIn: SignInView = SignInView()
    
    @IBOutlet weak var SignInOutlet: SignInView!
    @IBOutlet weak var SignUpOutlet: SignUpView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        //signIn.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func LoginDidTapped(email: String?, password: String?) {
        if (email != " " || password != "") {
            
        }
    }


}

