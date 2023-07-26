//
//  SearchView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 10){
                ForEach(Vehicle.DIVERSE_MOCK_POSTS, id: \.id){
                    post in
                    post.renderCardView()
                }
            }
        }
        .background(Color("Background"))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
