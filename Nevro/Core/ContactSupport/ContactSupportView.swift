//
//  ContactSupportView.swift
//  Nevro
//
//  Created by David Farrow on 7/18/23.
//

import SwiftUI

struct ContactSupportView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Contact Support")
            }
        }
    }
}

struct ContactSupportView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSupportView()
    }
}
