//
//  LoginView.swift
//  Nevro
//
//  Created by David Farrow on 7/17/23.
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
                    Image("welcome-to")
                    Image("header")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 337, height: 119)
                    Image("key-to-new")
                        .padding(.top)
                    Image("car")
                        .padding(.top, 50)
                    
                    //Spacer
                    Spacer()
                    
                    //Sign Up Link
                    NavigationLink {
                        Text("Sign Up")
                    }   label: {
                        Image("signup-button")
                    }
                    
                    //Login Link
                    NavigationLink {
                        Text("Log in")
                    }   label: {
                        Image("login-button")
                    }
                    .padding(.vertical, 12)
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
