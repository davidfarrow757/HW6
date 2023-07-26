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
                Text(verbatim:"\(post.vehicle.brand) \(post.vehicle.model) | \(post.vehicle.year)")
                    .font(.title)
                Text("\(post.user.name)")
                    .font(.title2)
                Text("\(String(format: "%.2f", post.vehicle.monthPrice))$/month")
                    .font(.title2)
                Text("From:\(post.vehicle.start.formatted(date: .abbreviated, time: .omitted)) To: \(post.vehicle.end.formatted(date: .abbreviated, time: .omitted))")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Text("\(post.vehicle.numSeats) seats | \(post.greenAttributes.mpg) mpg")
                    .font(.title2)
                Text("Type: \(post.greenAttributes.vehicleType)").font(.title2)
            }
            .frame(maxWidth: .infinity)
            Image("\(post.vehicle.images[0])")
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
