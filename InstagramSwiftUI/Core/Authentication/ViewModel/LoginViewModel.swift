//
//  LoginViewModel.swift
//  InstagramSwiftUI
//
//  Created by Danik on 01.03.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
