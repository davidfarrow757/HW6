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
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
            TripsView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Trips")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
              
            InboxView()
                .tabItem {
                    Image(systemName: "envelope.badge")
                    Text("Inbox")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
            MoreView()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
