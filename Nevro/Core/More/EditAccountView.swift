//
//  EditAccountView.swift
//  Nevro
//
//  Created by David Farrow on 7/26/23.
//

import SwiftUI

struct EditAccountView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
            Text("Change Password")
                    .foregroundColor(Color("Gray1"))
                    .font(.title)
            }
        }
    }
}

struct EditAccountView_Previews: PreviewProvider {
    static var previews: some View {
        EditAccountView()
    }
}
