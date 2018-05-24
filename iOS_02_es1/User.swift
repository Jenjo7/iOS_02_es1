//
//  User.swift
//  iOS_02_es1
//
//  Created by Gianni Savini on 04/05/17.
//  Copyright © 2017 Gianni Savini. All rights reserved.
//

import Foundation

class User {

    var name : String;
    var age : Int
    var married : Bool
    var sons : Int
    
    init(name : String, age :Int, married : Bool, sons : Int ) {
        self.name = name
        self.age = age
        self.married = married
        self.sons = sons
    }
    
    
}
