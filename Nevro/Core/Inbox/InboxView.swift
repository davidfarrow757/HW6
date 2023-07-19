//
//  InboxView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew on 7/17/23.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        VStack{
            Image("inbox-title")
            Text("No messages yet")
                .padding(.vertical, 100)
            Spacer()
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
