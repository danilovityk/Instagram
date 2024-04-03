//
//  AuthManager.swift
//  Instagram
//
//  Created by Danik on 11.01.2024.
//

import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager();
    
    public func registerNewUser(username: String, email: String, password: String, completion: @escaping (Bool) -> Void){
        
        // check if username and email are not taken yet
        DatabaseManager.shared.canCreateNewUser(with: username, username: username) { canCreate in
            if canCreate {
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    guard result != nil, error == nil else{
                        // Firebase auth could not create account
                        completion(false)
                        return
                    }
                    // Insert into database
                    DatabaseManager.shared.insertNewUser(with: email, username: username) { inserted in
                        if inserted{
                            completion(true)
                            return
                        }else{
                            // failed insertion into the database
                            completion(false)
                            return
                        }
                       
                    }
                }
            }else{
                //
                completion(false)
            }
        }
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
            print(username)
        }
    }
    
    /// Attempt to log out Firebase user. Boolean closure callback with the result of the signout.
    public func LogOut(completion: (Bool) -> Void) {
        do {
            try Auth.auth().signOut()
            completion(true)
            return
        }catch {
            completion(false)
            print(error)
            return
        }
    }
}
