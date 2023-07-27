//
//  Vehicle.swift
//  Nevro
//
//  Created by Carter Andrew on 7/22/23.
//


import Foundation
import Firebase
import FirebaseFirestore
import SwiftUI
protocol VehicleHandler: Identifiable{
    var id: String{get}
    func uploadData() async throws -> Void
    func renderCardView() -> AnyView
}
struct VehicleAttributes: Hashable, Identifiable, Codable{
    let id: String
    let uid: String?
    var brand: String
    var model: String
    var year: Int
    var start: Date
    var end: Date
    var monthPrice: Float
    var purchased: Bool = false
    var numSeats: Int
    var drivechain: String
    var images: [String]
}
struct GreenVehicleAttributes: Hashable, Identifiable, Codable{
    let id: String
    var mpg: Int
    var vehicleType: String
}
class Vehicle: VehicleHandler{
    var vehicle: VehicleAttributes
    var id: String {self.vehicle.id}
    init(vehicle: VehicleAttributes) {
        self.vehicle = vehicle
    }
    func renderCardView() -> AnyView {
        return AnyView(BasicVehicleView(post: self))
    }
    func uploadData() async throws-> Void {
        let postRef = Firestore.firestore().collection("baseAttributes").document()
        guard let endcodedVehicle = try? Firestore.Encoder().encode(vehicle) else {return}
        try await postRef.setData(endcodedVehicle)
    }
}

class GreenVehicle: VehicleHandler{
    var vehicle: any VehicleHandler
    var id: String {self.vehicle.id}
    var greenAttributes: GreenVehicleAttributes
    init(vehicle: any VehicleHandler, greenAttributes: GreenVehicleAttributes) {
        self.vehicle = vehicle
        self.greenAttributes = greenAttributes
    }
    func renderCardView() -> AnyView {
        return AnyView(GreenVehicleView(post: self))
    }
    func uploadData() async throws -> Void {
        let postRef = Firestore.firestore().collection("greenAttributes").document()
        guard let encodedGreenVehicle = try? Firestore.Encoder().encode(greenAttributes) else {return}
        
        try await postRef.setData(encodedGreenVehicle)
        try await self.vehicle.uploadData()
    }
}

extension Vehicle{
    static var MOCK_POSTS: [Vehicle] = [
        Vehicle(vehicle: VehicleAttributes.init(id: NSUUID().uuidString, uid: NSUUID().uuidString, brand: "Kia", model: "Sol", year: 1992, start: Date(), end: Date(), monthPrice: 2000, numSeats: 5, drivechain: "rwd", images: ["car"]))
    ]
    static var DIVERSE_MOCK_POSTS: [any VehicleHandler] = [
        Vehicle.MOCK_POSTS[0],
        GreenVehicle.MOCK_POSTS[0]
    ]
}
extension GreenVehicle{
    static var MOCK_POSTS: [GreenVehicle] = [
        GreenVehicle(vehicle: Vehicle(vehicle: VehicleAttributes.init(id: NSUUID().uuidString, uid: NSUUID().uuidString, brand: "Kia", model: "Sol", year: 1992, start: Date(), end: Date(), monthPrice: 2000, numSeats: 5, drivechain: "rwd", images: ["car"])), greenAttributes: GreenVehicleAttributes.init(id: NSUUID().uuidString, mpg: 45, vehicleType: "Hybrid"))
    ]
}





