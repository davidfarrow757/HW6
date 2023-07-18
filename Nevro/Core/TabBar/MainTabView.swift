//
//  MainTabView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Favorites")
                .tabItem {
                    Image(systemName: "heart")
                }
            Text("Trips")
                .tabItem {
                    Image(systemName: "calendar")
                }
            Text("Inbox")
                .tabItem {
                    Image(systemName: "envelope.badge")
                }
            Text("More")
                .tabItem {
                    Image(systemName: "ellipsis")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
