//
//  Country.swift
//  UIKitCleanSwiftV.I.P
//
//  Created by Juho JUNG on 13/07/2023.
//

import Foundation

struct CountryData: Codable {
    let data: [Country]
}

struct Country: Codable {
    let name, unicodeFlag: String
}

