//
//  TripsView.swift
//  Nevro
//
//  Created by David Farrow and Carter Andrew on 7/17/23.
//

import SwiftUI

struct TripsView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("trips-title")
                
                //Scroller Begins
                ScrollView{
                    TripsCardView()
                    TripsCardView()
                    TripsCardView()
                    TripsCardView()
                    TripsCardView()
                    TripsCardView()
                    TripsCardView()
                    TripsCardView()
                    TripsCardView()
                }
            }
        }
    }
}


struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}



