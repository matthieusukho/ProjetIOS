//
//  SignUpView.swift
//  ProjectIos
//
//  Created by Matthieu Sukho on 15/02/2018.
//  Copyright © 2018 Matthieu Sukho. All rights reserved.
//

import UIKit

@objc protocol SignUpViewDelegate {
    func LoginDidTapped()
}

class SignUpView: UIView {
     var delegate: SignUpViewDelegate?
    @IBOutlet weak var password: UITextField!
    @IBOutlet var SignUpView: UIView!
    @IBOutlet weak var confirm_password: UITextField!
    @IBOutlet weak var email: UITextField!
  
    @IBAction func goToLogin(_ sender: Any) {
        delegate?.LoginDidTapped()
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        if (password.text == confirm_password.text) {
            if (email.text != " " && password.text != " "){
                StaticUser.instance?.user = User(email: email.text!, password: password.text!)
                print(StaticUser.instance?.user?.email)
                print("succes")
                
            }else{
                print("Email or password invalid")
            }
        }

    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)
        addSubview(SignUpView)
        SignUpView.frame = self.bounds
        SignUpView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }

}
