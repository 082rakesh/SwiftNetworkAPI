//
//  Country.swift
//  SwiftNetworkApp
//
//  Created by Kumar Mishra, R. F. on 6/12/18.
//  Copyright © 2018 Kumar Mishra, R. F. All rights reserved.
//

import Foundation


struct CountryInfo : Decodable {
    let title: String?
    let rows : [Fact]?
}

///- Fact : data model for country facts
struct Fact: Decodable {
    let title: String?
    let description: String?
    let imageHref: String?
}



//extension CountryListResponse: Decodable {
//
//    enum CountCodingKeys : String, CodingKey {
//        case messages = "messages"
//        case countries = "result"
//    }
//
//    init(from decoder: Decoder) throws {
//        let countryApiContainer = try decoder.container(keyedBy: CountCodingKeys.self)
//
//        messages = try countryApiContainer.decode(String.self, forKey: .messages)
//        countries = try countryApiContainer.decode([Country].self, forKey: .countries)
//    }
//}



//struct Country{
//    let name: String
//    let alpha2code: String
//    let alpha3code: String
//}

//extension Country: Decodable{
//    
//    enum CountryCodingKeys : String, CodingKey {
//        case name
//        case alpha2code = "alpha2_code"
//        case alpha3code = "alpha3_code"
//    }
//
//    init(from decoder: Decoder) throws {
//        let countryContainer = try decoder.container(keyedBy: CountryCodingKeys.self)
//
//        name = try countryContainer.decode(String.self, forKey: .name)
//        alpha2code = try countryContainer.decode(String.self, forKey: .alpha2code)
//        alpha3code = try countryContainer.decode(String.self, forKey: .alpha3code)
//    }
//}

