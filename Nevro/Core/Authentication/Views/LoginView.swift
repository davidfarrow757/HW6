//
//  LoginView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    var body: some View {
       NavigationStack {
            ZStack {
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                
                //VStack for Logo
                VStack{
                    Spacer()
                    //Phone Number
                    TextField("Email", text: $email, prompt: Text("Email").foregroundColor(.orange))
                        .padding(20)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12))
                    TextField("Username", text: $email, prompt: Text("Username").foregroundColor(.orange))
                        .padding(20)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12))
                    SecureField("Password", text: $email, prompt: Text("Password").foregroundColor(.orange))
                        .padding(20)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12))
                    //Forgot Password Button
                    Button {
                    } label: {
                        Image("forgot-password")
                    }
                    
                    //Spacer
                    Spacer()
                    
                    //Login Button
                    Button {
                    } label: {
                        Image("login-button-2")
                    }
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
