//
//  Vehicle.swift
//  Nevro
//
//  Created by Carter Andrew on 7/22/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift
protocol VehicleNessesities{
    func uploadData() async -> Bool
}

class Vehicle: VehicleNessesities{
    var isRented: Bool
    var start: Date
    var end: Date
    var name: String
    var vendor: String
    var year: Int
    var price: Float
    var photos: [String]
    var uid: String
    init(isRented: Bool, start: Date, end: Date, name: String, vendor: String, year: Int, price: Float, photos: [String]) {
        self.isRented = isRented
        self.start = start
        self.end = end
        self.name = name
        self.vendor = vendor
        self.year = year
        self.price = price
        self.photos = photos
        self.uid = ""
    }
    func uploadData() async -> Bool {
        return true
    }
}
