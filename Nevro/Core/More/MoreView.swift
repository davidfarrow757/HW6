//
//  MoreView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink  {
                    AccountView()
                } label: {
                    Image("account-button")
                }
                NavigationLink {
                    BecomeHostView()
                } label: {
                    Image("become-host-button")
                }
                NavigationLink {
                    ContactSupportView()
                } label: {
                    Image("contact-support-button")
                }
                Button {
                } label: {
                    Image("logout-button")
                }
            }
        
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
