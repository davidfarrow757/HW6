//
//  ContentViewModel.swift
//  Nevro
//
//  Created by Carter Andrew on 7/21/23.
//

import Foundation
import FirebaseAuth
import Combine
@MainActor
class ContentViewModel: ObservableObject{
    private let service = AuthService.shared
    private var canellables = Set<AnyCancellable>()
    @Published var userSession: FirebaseAuth.User?
    init() {
        setupSubstribers()
    }
    func setupSubstribers(){
        service.$userSession.sink{ [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &canellables)
    }
}
