//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Royston Vishal on 02/03/25.
//

import Foundation

final class RMRequest {
   
    private struct Constants{
        let basicURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    
    private var pathComponents: [String]
    
    private var queryParameters: [URLQueryItem]
    
    private var urlString: String {
        
        var string = Constants().basicURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }.joined(separator: "?")
            string += argumentString
        }
        
        
        return string
    }
    
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public init (endpoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
}
