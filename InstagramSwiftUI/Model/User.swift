//
//  User.swift
//  InstagramSwiftUI
//
//  Created by Danik on 19.02.2024.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "AlexAdventure92", profileImageUrl: "man3", fullname: "Alexander Smith", bio: "Keep grinding", email: "alexAdventure@gmail.com"),
        .init(id: NSUUID().uuidString, username: "designerr", profileImageUrl: "girl1", fullname: "Emma Clark", bio: "Fashionista, traveler, eternal optimist.", email: "designerr@gmail.com"),
        .init(id: NSUUID().uuidString, username: "johnson_aws", profileImageUrl: "man1", fullname: "Maxwell Johnson", bio: "Adventure seeker, thrill chaser, life enthusiast.", email: "johnson_aws@gmail.com"),
        .init(id: NSUUID().uuidString, username: "theRock", profileImageUrl: "man2", fullname: nil, bio: "Fitness addict, nature explorer, dog dad.", email: "theRock@gmail.com"),

        .init(id: NSUUID().uuidString, username: "flower_", profileImageUrl: "girl2", fullname: "Mia Taylor", bio: "Artist at heart, dreamer, nature admirer.", email: "flower@gmail.com")
    ]
}
