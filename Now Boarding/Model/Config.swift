//
//  Profile.swift
//  Now Boarding
//
//  Created by Peter Cole on 30/01/2023.
//

import Foundation

struct Config {
    var crsOne: String
    
    var crsTwo: String
    
    var direction = Direction.outward
    
    static let `default` = Config(crsOne: "HGS", crsTwo: "CHX")
    
    enum Direction: String, CaseIterable, Identifiable {
        case outward = "out"
        case back = "back"
        
        var id: String { rawValue }
    }
}
