//
//  GetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Royston Vishal on 04/03/25.
//

import Foundation

struct GetAllCharactersResponse: Codable {
    
    let info: Info
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
        
    }
    let results: [RMCharater]
    
    
}
