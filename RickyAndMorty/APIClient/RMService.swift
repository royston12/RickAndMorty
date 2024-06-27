//
//  RMServise.swift
//  RickyAndMorty
//
//  Created by Royston Vishal on 29/05/24.
//

import Foundation

/// Primary Service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    
    
    
    public func execute<T: Codable>(_ request: RMRequest,expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
    
    
}
