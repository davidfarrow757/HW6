//
//  BasicVehicleView.swift
//  Nevro
//
//  Created by Carter Andrew on 7/25/23.
//

import SwiftUI

struct BasicVehicleView: View {
    let post: Vehicle
    var body: some View {
        HStack{
            VStack{
                Text(verbatim:"\(post.vehicle.brand) \(post.vehicle.model) | \(post.vehicle.year)")
                    .font(.title)
                Text("\(post.user.name)")
                    .font(.title2)
                Text("\(String(format: "%.2f", post.vehicle.monthPrice))$/month")
                    .font(.title2)
                Text("\(post.vehicle.numSeats) seats | \(post.vehicle.drivechain)")
                    .font(.title2)
            }
            .frame(maxWidth: .infinity)
            Image("\(post.vehicle.images[0])")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
        }
        .background(.orange)
    }
}

struct BasicVehicleView_Previews: PreviewProvider {
    static var previews: some View {
        BasicVehicleView(post:Vehicle.MOCK_POSTS[0])
    }
}
