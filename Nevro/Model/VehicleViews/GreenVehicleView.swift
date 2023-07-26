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
        HStack{
            VStack{
                Text(verbatim:"\(post.vehicle.vehicle.brand) \(post.vehicle.vehicle.model) | \(post.vehicle.vehicle.year)")
                    .font(.title)
                Text("Carter")
                    .font(.title2)
                Text("\(String(format: "%.2f", post.vehicle.vehicle.monthPrice))$/month")
                    .font(.title2)
                Text("From:\(post.vehicle.vehicle.start.formatted(date: .abbreviated, time: .omitted)) To: \(post.vehicle.vehicle.end.formatted(date: .abbreviated, time: .omitted))")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Text("\(post.vehicle.vehicle.numSeats) seats | \(post.greenAttributes.mpg) mpg")
                    .font(.title2)
                Text("Type: \(post.greenAttributes.vehicleType)").font(.title2)
            }
            .frame(maxWidth: .infinity)
            Image("\(post.vehicle.vehicle.images[0])")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
        }
        .background(.green)
    }
}

struct GreenVehicleView_Previews: PreviewProvider {
    static var previews: some View {
        GreenVehicleView(post: GreenVehicle.MOCK_POSTS[0])
    }
}
