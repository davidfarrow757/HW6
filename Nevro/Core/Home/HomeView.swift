//
//  HomeView.swift
//  Nevro
//
//  Created by David Farrow on 7/25/23.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowingDetailView = false
    var body: some View {
        ZStack {
            //Profile Image
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Header")
                ImageSliderView()
                Spacer()
                }
            }
        }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
