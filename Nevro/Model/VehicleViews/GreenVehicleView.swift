//
//  GreenVehicleView.swift
//  Nevro
//
//  Created by Carter Andrew on 7/25/23.
//

import SwiftUI

struct GreenVehicleView: View {
    let post: GreenVehicle
    var body: some View {
        VStack(alignment: .leading){
            post.vehicle.renderCardView()
            Text("Eco Car Information:")
                .font(.title)
            Text("Miles per gallon: \(post.greenAttributes.mpg)")
                .font(.title2)
            Text("Vehicle Type: \(post.greenAttributes.vehicleType)")
                .font(.title2)
        }
        .background(.green)
    }
}

struct GreenVehicleView_Previews: PreviewProvider {
    static var previews: some View {
        GreenVehicleView(post: GreenVehicle.MOCK_POSTS[0])
    }
}
