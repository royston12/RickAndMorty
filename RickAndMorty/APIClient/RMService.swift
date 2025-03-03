//
//  RMService.swift
//  RickAndMorty
//
//  Created by Royston Vishal on 02/03/25.
//

import Foundation

final class RMService {
    
    static let shared = RMService()
    
    
    private init() {}
    
    
    public func execute<T: Codable>(request: RMRequest, expecting type: T.Type, completion: @escaping(Result<T, Error>) -> Void) {
        
    }

    
}
