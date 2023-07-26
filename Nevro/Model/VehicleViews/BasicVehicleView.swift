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
            VStack(alignment: .center){
                Text(verbatim:"\(post.vehicle.brand) \(post.vehicle.model) | \(post.vehicle.year)")
                    .font(.title)
                    .foregroundColor(Color("Background"))
                Text("\(post.user.name)")
                    .font(.title2)
                    .foregroundColor(Color("Background"))
                Text("\(String(format: "%.2f", post.vehicle.monthPrice))$/month")
                    .font(.title2)
                    .foregroundColor(Color("Background"))
                Text("From:\(post.vehicle.start.formatted(date: .abbreviated, time: .omitted)) To: \(post.vehicle.end.formatted(date: .abbreviated, time: .omitted))")
                    .font(.title2)
                    .foregroundColor(Color("Background"))
                    .multilineTextAlignment(.center)
                Text("\(post.vehicle.numSeats) seats | \(post.vehicle.drivechain)")
                    .font(.title2)
                    .foregroundColor(Color("Background"))
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
