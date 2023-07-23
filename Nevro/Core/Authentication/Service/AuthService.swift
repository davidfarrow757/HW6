//
//  AuthService.swift
//  Nevro
//
//  Created by Carter Andrew on 7/20/23.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestoreSwift
class AuthService{
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    static let shared = AuthService()
    init(){
        self.userSession = Auth.auth().currentUser
    }
    func login(withEmail email: String, password:String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        }catch{
            print("Failed to authenticate user \(error.localizedDescription)")
        }
    }
    
    func createUser(email:String, password:String, username: String) async throws{
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await uploadNewUserData(uid: result.user.uid, email: email, name: username)
        }catch{
            print("Failed to make user \(error.localizedDescription)")
        }
    }
    func loadUserData() async throws{
        self.userSession = Auth.auth().currentUser
        guard let currentUid = userSession?.uid else {return}
        let snapshot = try await Firestore.firestore().collection("users").document(currentUid).getDocument()
        self.currentUser = try? snapshot.data(as: User.self)
    }
    func signOut(){
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    func uploadNewUserData(uid: String, email: String, name: String) async {
        let user = User(id: uid, name: name, email: email)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {return}
        
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
}
