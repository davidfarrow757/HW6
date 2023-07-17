//
//  ContentView.swift
//  Nevro
//
//  Created by David Farrow, Andrew Carter.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            SearchView()
                .tabItem {
                    Image("ic-search")
                }
            FavoritesView()
                .tabItem {
                    Image("ic-favorites")
                }
            InboxView()
                .tabItem {
                    Image("ic-inbox")
                }
           MoreView()
                .tabItem {
                    Image("ic-more")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
