//
//  ModelData.swift
//  Landmarks
//
//  Created by Josh May on 4/21/25.
//

import Foundation

let landmarks: [Landmark] = load("landmarks.json")

func load<T: Decodable>(_ filename: String) -> T {
	
	let data: Data
	guard let file = Bundle.main.url(forResource: filename, withExtension: nil, subdirectory: "Resources")
	else {
		fatalError("Unable to locate \(filename) in Resources")
		}
	do {
		data = try Data(contentsOf: file)
	}
	catch {
		fatalError("Unable to load \(filename) from Resources folder: \(error)")
	}
	
	do {
		let decoder = JSONDecoder()
		return try decoder.decode(T.self, from: data)
	}
	catch {
		fatalError("Unable to parse \(filename) as \(T.self):\n\(error)")
	}
}
