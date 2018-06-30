//
//  User.swift
//  App
//
//  Created by admin on 30/06/18.
//

import Vapor

struct User : Content
{
    var name : String
    
    var email : String
}

struct LoginRequest  : Content
{
    var email : String
    
    var password : String    
}
