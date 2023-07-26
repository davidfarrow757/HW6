//
//  HomeView.swift
//  Nevro
//
//  Created by David Farrow on 7/25/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Header")
                    .frame(width: 190, height: 35)
                   .padding(.top,35)
                 Divider()
        
                ImageSliderView()
                    .padding(.top,35)
                
                Button {
                } label: {
                    Text("Find your vehicle")
                        .foregroundColor(.black)
                        .frame(width: 300,height: 30)
                        .background(.orange)
                        .cornerRadius(100)
                }
  
                HStack {
                    Text("Recently Added")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color("Gray1"))
                     
                    Spacer()
                    Image(systemName: "car")
                        .foregroundColor(Color("Gray1"))
            
                } .padding()
                
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack{
                        VehicleCardView()
                        VehicleCardView()
                        VehicleCardView()
                        VehicleCardView()
                    }
                }

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
