//
//  PostViewModel.swift
//  Nevro
//
//  Created by Carter Andrew on 7/26/23.
//

import Foundation
import Firebase
class PostViewModel: ObservableObject{
    @Published var baseVehicle = Vehicle(vehicle: VehicleAttributes(id: NSUUID().uuidString, uid: Auth.auth().currentUser!.uid, brand: "", model: "", year: 2023, start: Date(), end: Date(), monthPrice: 0, purchased: false, numSeats: 4, drivechain: "", images: []))
    func uploadPost() async{
        await self.baseVehicle.uploadData()
    }
}
