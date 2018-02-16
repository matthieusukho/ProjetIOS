//
//  SignInView.swift
//  ProjectIos
//
//  Created by Matthieu Sukho on 15/02/2018.
//  Copyright © 2018 Matthieu Sukho. All rights reserved.
//

import UIKit

@objc protocol SignInViewDelegate {
    func RegisterDidTapped()
}


class SignInView: UIView {
     var delegate: SignInViewDelegate?
    
    
    @IBOutlet var SignInView: UIView!
   
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    @IBAction func login(_ sender: Any) {
        if (StaticUser.instance?.user?.email == email.text && StaticUser.instance?.user?.password == password.text){
            print ("succesfull login")
        }else if (StaticUser.instance?.user?.email != email.text && StaticUser.instance?.user?.password != password.text){
            print("Unable to find a match with this pair of email / password")
        }
        
        if (StaticUser.instance?.user == nil){
            print("Please register first")
        }
    }
    @IBAction func register() {
        delegate?.RegisterDidTapped()
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
        //password.isSecureTextEntry = true
        Bundle.main.loadNibNamed("SignInView", owner: self, options: nil)
        addSubview(SignInView)
        SignInView.frame = self.bounds
        SignInView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    
    
}
