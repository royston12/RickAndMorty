//
//  RMCharacter.swift
//  RickyAndMorty
//
//  Created by Royston Vishal on 14/05/24.
//

import Foundation

struct RMCharacter: Codable {
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}
