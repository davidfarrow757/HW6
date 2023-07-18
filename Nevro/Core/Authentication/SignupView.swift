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
                     
                     //Spacer
                     Spacer()
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
