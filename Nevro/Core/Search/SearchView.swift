//
//  SearchView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew.
//

import SwiftUI

struct SearchView: View {
    @Binding var refresh: Bool
    var body: some View {
        ScrollView{
            Text("\(refresh)" as String)
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
        SearchView(refresh: .constant(true))
    }
}
