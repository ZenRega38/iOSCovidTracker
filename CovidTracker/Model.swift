//
//  Model.swift
//  CovidTracker
//
//  Created by Rega Rizkan Azizan on 12/11/20.
//

import Foundation

struct Countries: Decodable {
    let countries: [Country]

    enum CodingKeys: String, CodingKey {
        case countries = "Countries"
    }
}

struct Country: Decodable, Identifiable {
    var id = UUID()
    let country, countryCode: String
    let newConfirmed, totalConfirmed, newDeaths, totalDeaths: Int
    let newRecovered, totalRecovered: Int

    enum CodingKeys: String, CodingKey {
        case country = "Country"
        case countryCode = "CountryCode"
        case newConfirmed = "NewConfirmed"
        case totalConfirmed = "TotalConfirmed"
        case newDeaths = "NewDeaths"
        case totalDeaths = "TotalDeaths"
        case newRecovered = "NewRecovered"
        case totalRecovered = "TotalRecovered"
    }
}
