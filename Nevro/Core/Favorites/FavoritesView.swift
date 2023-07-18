//
//  FavoritesView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Image("favorites-title")
            Text("No favorites yet")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
