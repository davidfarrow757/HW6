//
//  MoreView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        VStack {
            Button {
            } label: {
                Image("account-button")
            }
            Button {
            } label: {
                Image("become-host-button")
            }
            Button {
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

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
