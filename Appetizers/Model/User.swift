//
//  User.swift
//  Appetizers
//
//  Created by Serhan Khan on 01.10.22.
//

import Foundation


struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
