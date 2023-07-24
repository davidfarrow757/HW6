//
//  BecomeHostView.swift
//  Nevro
//
//  Created by David Farrow on 7/18/23.
//

import SwiftUI

struct BecomeHostView: View {
    var body: some View {
        ZStack{
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Become host..")
            }
        }
    }
}

struct BecomeHostView_Previews: PreviewProvider {
    static var previews: some View {
        BecomeHostView()
    }
}
