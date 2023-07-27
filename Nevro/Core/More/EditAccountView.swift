//
//  EditAccountView.swift
//  Nevro
//
//  Created by David Farrow on 7/26/23.
//

import SwiftUI
import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestoreSwift

struct EditAccountView: View {
    @State private var currentPassword: String = ""
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("edit-account-title")
                    .padding(.bottom, 70)
                
                Text("Change Password")
                    .foregroundColor(Color("Gray1"))
                    .font(.title)
                
            /* FireBase Guide
            https://firebase.google.com/docs/auth/ios/manage-users#set_a_users_password
            
             let user = Auth.auth().currentUser
             var credential: AuthCredential

             // Prompt the user to re-provide their sign-in credentials
             
             
             //Step 1. Re-authenticae
             user?.reauthenticate(with: credential) { error in
               if let error = error {
                 // An error happened. Generate Alert
               } else {
                 // User re-authenticated.
                // Step 2. Prompt the user to for new password and password confirmation
                //Step 3. Check for match of new password and confimation
                //Step 4. Click Submit and update password method
                    Auth.auth().currentUser?.updatePassword(to: password) { error in
                    // ...
                    }
               }
             }
           */
                
                //Current Password
                SecureField("Enter a password", text: $currentPassword, prompt: Text("Current Password").foregroundColor(.orange))
                    .foregroundColor(Color("AccentColor"))
                    .padding(20)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                
                //NewPassword
                SecureField("Enter a password", text: $newPassword, prompt: Text("New Password").foregroundColor(.orange))
                    .foregroundColor(Color("AccentColor"))
                    .padding(20)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
            
                //Change Password
                SecureField("Enter a password", text: $confirmPassword, prompt: Text("Confirm Password").foregroundColor(.orange))
                    .foregroundColor(Color("AccentColor"))
                    .padding(20)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
           
                //Submit Password Change
                Button {
                    //Task{try await //registrationViewModel.createUser()}
                } label: {
                    Text("Submit")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .frame(width: 360,height: 70)
                        .background(.orange)
                        .cornerRadius(100)
                }
                
                Spacer()
            }
        }
    }
}

struct EditAccountView_Previews: PreviewProvider {
    static var previews: some View {
        EditAccountView()
    }
}
