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
            SearchView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            TripsView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Trips")
                }
            InboxView()
                .tabItem {
                    Image(systemName: "envelope.badge")
                    Text("Inbox")
                }
            MoreView()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
