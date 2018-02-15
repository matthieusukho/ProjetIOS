//
//  SignInView.swift
//  ProjectIos
//
//  Created by Matthieu Sukho on 15/02/2018.
//  Copyright © 2018 Matthieu Sukho. All rights reserved.
//

import UIKit


class SignInView: UIView {
    var delegate: SignInViewDelegate?
    
    @IBOutlet var SignInView: UIView!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    @IBAction func Login(_ sender: Any) {
        delegate?.LoginDidTapped(email: email.text, password: password.text)
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
