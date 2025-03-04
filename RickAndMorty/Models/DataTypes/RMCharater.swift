//
//  RMCharater.swift
//  RickAndMorty
//
//  Created by Royston Vishal on 02/03/25.
//

import Foundation

struct RMCharater: Codable {

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
