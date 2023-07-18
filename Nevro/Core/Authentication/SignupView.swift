//
//  SignupView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct SignupView: View {
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
                     
                     //Full Name
                     Image("temp-name")
                         .padding(.bottom, 10)
                     
                     //Phone Number
                     Image("temp-phone")
                         .padding(.bottom, 10)
                     
                     //Password
                     Image("temp-password")
                         .padding(.bottom, 10)

                     //Spacer
                     Spacer()
                     
                     //Signup Button
                     Button {
                     } label: {
                         Image("signup-button")
                     }
                 }
             }
         }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
