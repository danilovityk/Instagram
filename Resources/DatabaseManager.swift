//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Danik on 11.01.2024.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager();
    private let database = Database.database().reference()
    /// Check if the username and email is available
    ///  - Parameters
    ///    - email: String representing email
    ///    - username: String representing username
    ///    - completion: Closure callback that will be called after the check with the result passed
    public func canCreateNewUser (with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    /// Inserts newly created user to the database
    ///  - Parameters
    ///    - email: String representing email
    ///    - username: String representing username
    ///    - completion: Closure callback for result if database insertion succeded
    public func insertNewUser (with email: String, username: String, completion: @escaping (Bool) -> Void){
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                completion(true)
                return
            }else{
                completion(false)
                return
            }
        }
    }
    
    
 
}
