//
//  ModelData.swift
//  testik
//
//  Created by Evgeny Varzin on 22.10.2023.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    print(filename)
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        print(filename)
        fatalError("Net faila takogo")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("ne mobu zagruzit \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        print(error)
        fatalError("Ne mogu sparsit")
    }
}
