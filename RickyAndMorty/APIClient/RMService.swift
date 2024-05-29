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
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback for data or error 
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
    
    
}
