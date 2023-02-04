//
//  Model Data.swift
//  Now Boarding
//
//  Created by Peter Cole on 27/01/2023.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
    @Published var departuresServices: [DeparturesService] = load("departuresData.json")
    
    @Published var config = Config.default
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
