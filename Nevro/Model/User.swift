//
//  User.swift
//  Nevro
//
//  Created by Carter Andrew on 7/22/23.
//

import Foundation

struct User: Identifiable, Codable{
    let id: String
    var name: String
    var email: String
    var profileImageURL: String?
}
