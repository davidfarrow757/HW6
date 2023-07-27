//
//  MainTabView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct MainTabView: View {
    @State var refresh: Bool = false
    var body: some View {
            TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    }   .toolbarBackground(.visible, for: .tabBar)
                        .toolbarBackground(Color("TabColor"), for: .tabBar)
                SearchView(refresh: $refresh)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
            
            TripsView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Trips")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
                
           //Inbox feature will be added at a later time...
           /*
            InboxView()
                .tabItem {
                    Image(systemName: "envelope.badge")
                    Text("Inbox")
                }   .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color("TabColor"), for: .tabBar)
            */
            MoreView(refersh: $refresh)
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
