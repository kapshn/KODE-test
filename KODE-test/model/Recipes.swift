//
//  Recipes.swift
//  KODE-test
//
//  Created by Monday MeoW. on 30.01.2021.
//

import UIKit
struct Recipes:Decodable {
	let recipes: [Content]
}

struct Content: Decodable {
	let uuid: String
	let name: String
	let images: [String]
	let lastUpdated: Int
	let description: String
	let instructions: String
	let difficulty: Int
}
