//
//  SignupLoginView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrews.
//

import SwiftUI

struct SignupLoginView: View {
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
                        SignupView()
                    }   label: {
                        Image("signup-button")
                    }
                    
                    //Login Link
                    NavigationLink {
                        LoginView()
                    }   label: {
                        Image("login-button")
                    }
                    .padding(.vertical, 12)
                }
            }
        }
    }
}

struct SignupLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignupLoginView()
    }
}
