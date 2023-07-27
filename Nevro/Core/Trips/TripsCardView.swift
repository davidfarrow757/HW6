//
//  TripsCardView.swift
//  Nevro
//
//  Created by David Farrow on 7/26/23.
//

import SwiftUI

struct TripsCardView: View {
    var body: some View {
        HStack {
            HStack {
                Image("fn2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .cornerRadius(15)
                    .clipShape(Rectangle())
                    .padding(.trailing, 10)
                VStack(spacing: 5) {
                    HStack {
                        Text("Chevrolet Camaro")
                            .font(.callout)
                            .lineLimit(1)
                        Spacer()
                        Text("Booked")
                            .bold()
                            .font(.caption)
                            .lineLimit(1)
                    }
                    HStack {
                        Text("2020")
                            .font(.callout)
                            .lineLimit(1)
                        Spacer()
                        Text("date" + " - ")
                            .font(.caption)
                            .lineLimit(1)
                        Text("date")
                            .font(.caption)
                            .lineLimit(1)
                    }
                }
                Image(systemName: "info")
                    .frame(width: 25, height: 25)
                    .background(Circle().fill(Color("AccentColor")))
                    .padding(.leading, 10)
            }
            .padding()
            .background(Rectangle().fill(Color.white))
            .cornerRadius(15)
            .shadow(color: .gray, radius: 3, x: 2, y: 2)
        }
    }
}

struct TripsCardView_Previews: PreviewProvider {
    static var previews: some View {
        TripsCardView()
    }
}
