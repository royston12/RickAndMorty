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
    
    
    public func execute(request: RMRequest, completion: @escaping(Result<String, Error>) -> Void) {
        
    }

    
}
