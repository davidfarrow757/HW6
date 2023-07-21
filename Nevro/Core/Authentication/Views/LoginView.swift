//
//  LoginView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var registrationViewModel: RegistrationViewModel
    var body: some View {
       NavigationStack {
            ZStack {
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                
                //VStack for Logo
                VStack{
                    Spacer()
                    //Phone Number
                    TextField("Email", text: $registrationViewModel.email, prompt: Text("Email").foregroundColor(.orange))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    SecureField("Password", text: $registrationViewModel.password, prompt: Text("Password").foregroundColor(.orange))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    //Forgot Password Button
                    Button {
                    } label: {
                        Text("Forgot Password?")
                            .foregroundColor(.black)
                            .frame(width: 200,height: 30)
                            .background(.orange)
                            .cornerRadius(100)
                    }
                    
                    //Spacer
                    Spacer()
                    
                    //Login Button
                    Button {
                        Task{try await registrationViewModel.loginUser()}
                    } label: {
                        Text("Log in")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .frame(width: 360,height: 70)
                            .background(.orange)
                            .cornerRadius(100)
                        
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
