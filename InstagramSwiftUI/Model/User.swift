//
//  User.swift
//  InstagramSwiftUI
//
//  Created by Danik on 19.02.2024.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "AlexAdventure92", profileImageUrl: "man3", fullname: "Alexander Smith", bio: "Keep grinding", email: "connelly@gmail.com"),
        .init(id: NSUUID().uuidString, username: "designerr", profileImageUrl: "girl1", fullname: "Emma Clark", bio: "Fashionista, traveler, eternal optimist.", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "johnson_aws", profileImageUrl: "man1", fullname: "Maxwell Johnson", bio: "Adventure seeker, thrill chaser, life enthusiast.", email: "aboba@gmail.com"),
        .init(id: NSUUID().uuidString, username: "theRock", profileImageUrl: "man2", fullname: nil, bio: "Fitness addict, nature explorer, dog dad.", email: "aisec@gmail.com"),

        .init(id: NSUUID().uuidString, username: "flower_", profileImageUrl: "girl2", fullname: "Mia Taylor", bio: "Artist at heart, dreamer, nature admirer.", email: "aisec@gmail.com")
    ]
}
