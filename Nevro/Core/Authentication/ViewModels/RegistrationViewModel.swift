//
//  RegistrationViewModel.swift
//  Nevro
//
//  Created by Carter Andrew on 7/21/23.
//

import Foundation

class RegistrationViewModel: ObservableObject{
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
    func loginUser() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
