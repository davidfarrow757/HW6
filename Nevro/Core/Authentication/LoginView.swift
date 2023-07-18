//
//  LoginView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
       NavigationStack {
            ZStack {
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                
                //VStack for Logo
                VStack{
                    Image("header")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 337, height: 119)
                        .padding(.bottom, 100)
                    
                    //Phone Number
                    Image("temp-phone")
                        .padding(.bottom, 10)
                    
                    //Password
                    Image("temp-password")
                        .padding(.bottom, 10)
                    
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
