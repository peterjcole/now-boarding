//
//  DeparturesService.swift
//  Now Boarding
//
//  Created by Peter Cole on 27/01/2023.
//

import Foundation

struct DeparturesService: Hashable, Codable, Identifiable {
    var id: String
    var platform: String?
    var std: String?
    var etd: String?
    var destinationEta: String?
    var destinationSta: String?
    
    var origin: Location?
    var destination: Location?
    var formation: Formation?
    
    struct Location: Hashable, Codable {
        var name: String?
    }
    
    struct Formation: Hashable, Codable {
        var numCoaches: Int?
        var avgLoading: Int?
    }
}
