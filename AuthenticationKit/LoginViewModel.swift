//
//  LoginViewModel.swift
//  AuthenticationKit
//
//  Created by hainm13 on 03/03/2021.
//

import Foundation

public protocol LoginViewModelType {
    func validate(username: String, password: String) -> Bool
    func login(username: String, password: String, completion: @escaping (Bool) -> Void)
}

public class LoginViewModel: LoginViewModelType {
    public func validate(username: String, password: String) -> Bool {
        return !(username.isEmpty || password.isEmpty)
    }
    
    public func login(username: String, password: String, completion: @escaping (Bool) -> Void) {
        completion(username == "admin" && password == "Admin123@")
    }
    
    
}
