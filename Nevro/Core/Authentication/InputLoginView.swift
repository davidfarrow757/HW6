//
//  InputLoginView.swift
//  Nevro
//
//  Created by David Farrow on 7/17/23.
//

import SwiftUI

struct InputLoginView: View {
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

struct InputLoginView_Previews: PreviewProvider {
    static var previews: some View {
        InputLoginView()
    }
}
