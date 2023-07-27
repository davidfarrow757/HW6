//
//  EditAccountView.swift
//  Nevro
//
//  Created by David Farrow on 7/26/23.
//

import SwiftUI

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
                
                SecureField("Enter a password", text: $currentPassword, prompt: Text("Current Password").foregroundColor(.orange))
                    .foregroundColor(Color("AccentColor"))
                    .padding(20)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                
                SecureField("Enter a password", text: $newPassword, prompt: Text("New Password").foregroundColor(.orange))
                    .foregroundColor(Color("AccentColor"))
                    .padding(20)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                
                SecureField("Enter a password", text: $confirmPassword, prompt: Text("Confirm Password").foregroundColor(.orange))
                    .foregroundColor(Color("AccentColor"))
                    .padding(20)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                
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
