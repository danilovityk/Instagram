//
//  AuthManager.swift
//  Instagram
//
//  Created by Danik on 11.01.2024.
//

import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager();
    
    public func registerNewUser(username: String, email: String, password: String){
        
    }
    
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping((Bool) -> Void)){
        if let email = email{
            Auth.auth().signIn(withEmail: email, password: password) { AuthDataResult, error in
                guard AuthDataResult != nil, error == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }else if let username = username{
            
        }
    }
}
