//
//  PostViewModel.swift
//  Nevro
//
//  Created by Carter Andrew on 7/26/23.
//

import Foundation
import Firebase
class VehicleFactory{
    static let shared = VehicleFactory()
    func generateVehicle(
    brand:String,
    model:String,
    year: Int,
    price: Float,
    start: Date,
    end: Date,
    condition: String,
    numSeats: Int,
    mpg: Int,
    cartype: String ,
    clearance: Float,
    hp: Int,
    sqFt: Int) -> any VehicleHandler{
        var basevehicle: any VehicleHandler = Vehicle(vehicle: VehicleAttributes.init(id: NSUUID().uuidString, uid: Auth.auth().currentUser!.uid, brand: brand, model: model, year: year, start: start, end: end, monthPrice: price, numSeats: numSeats, drivechain: condition, images: ["car"]))
        print("Created base vehicle")
        if(mpg != 0 && cartype != ""){
            basevehicle = GreenVehicle(vehicle: basevehicle, greenAttributes: GreenVehicleAttributes.init(id: basevehicle.id, mpg: mpg, vehicleType: cartype))
            print("Created green vehicle")
        }
        return basevehicle
    }
}
