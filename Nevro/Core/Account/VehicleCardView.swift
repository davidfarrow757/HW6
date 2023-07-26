//
//  VehicleCardView.swift
//  Nevro
//
//  Created by David Farrow on 7/25/23.
//

import SwiftUI

struct VehicleCardView: View {
    // @EnvironmentObject var cartManager: CartManager
    //var product: Product
    var body: some View {
        ZStack {
            Color("Gray1")
            
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image("fn1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)
                    
                    Text("Ford Mustang ")
                        .font(.headline)
                        .padding(.vertical,1)
                    
                    Text("2020")
                        .foregroundColor(Color("AccentColor"))
                        .font(.caption)
                        .padding(.vertical, 1)
                    
                    Text("$200 per day")
                        .bold()
                }
                Button{
                    //cartManager.addToCart(product: product)
                } label: {
                    Image (systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                }
                
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(15)
    }
}

struct VehicleCardView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleCardView()
    }
}
