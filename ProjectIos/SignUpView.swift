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
    
    @IBOutlet var SignUpView: UIView!
    
  
    @IBAction func goToLogin(_ sender: Any) {
        delegate?.LoginDidTapped()
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
