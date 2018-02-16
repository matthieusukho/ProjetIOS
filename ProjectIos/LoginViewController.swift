//
//  LoginViewController.swift
//  ProjectIos
//
//  Created by Matthieu Sukho on 15/02/2018.
//  Copyright © 2018 Matthieu Sukho. All rights reserved.
//

import UIKit



class LoginViewController: UIViewController, SignInViewDelegate, SignUpViewDelegate{
    
    @IBOutlet weak var SignInOutlet: SignInView!
    @IBOutlet weak var SignUpOutlet: SignUpView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        SignInOutlet.delegate = self
        SignUpOutlet.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func RegisterDidTapped() {
        SignInOutlet.isHidden = true
        SignUpOutlet.isHidden = false
    }
    
    func LoginDidTapped() {
        SignUpOutlet.isHidden = true
        SignInOutlet.isHidden = false
    }
    
    
    

}

