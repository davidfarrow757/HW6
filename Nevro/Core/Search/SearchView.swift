//
//  SearchView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack{
            Image("search-title")
            Text("...")
                .padding(.vertical, 100)
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
