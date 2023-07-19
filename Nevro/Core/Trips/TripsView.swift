//
//  TripsView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew on 7/17/23.
//

import SwiftUI

struct TripsView: View {
    var body: some View {
        VStack{
            Image("trips-title")
            Text("No trips yet")
                .padding(.vertical, 100)
            Spacer()
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
