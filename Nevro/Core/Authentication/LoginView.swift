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
                    
                    //Spacer
                    Spacer()
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
