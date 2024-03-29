//
//  UserService.swift
//  InstagramSwiftUI
//
//  Created by Danik on 04.03.2024.
//

import Foundation
import Firebase


struct UserService {
    
    static func fetchAllUsers() async throws -> [User] {
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
       
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}
