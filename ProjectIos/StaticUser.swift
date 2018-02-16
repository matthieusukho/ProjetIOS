//
//  StaticUser.swift
//  ProjectIos
//
//  Created by Matthieu Sukho on 16/02/2018.
//  Copyright © 2018 Matthieu Sukho. All rights reserved.
//

import Foundation

class StaticUser {
    static let instance: StaticUser? = StaticUser()
    var user: User? = nil
    private init(){}
    
  }
