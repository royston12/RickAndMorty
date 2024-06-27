//
//  RMRequest.swift
//  RickyAndMorty
//
//  Created by Royston Vishal on 29/05/24.
//

import Foundation

/// Object that represents single API Call
final class RMRequest {
    
    //https://rickandmortyapi.com/api/character/?name=rick&status=alive
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndPoint
    
    private let pathComponents: [String]
    
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "/?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return(URL(string: urlString))
    }
    
    public let httpMethod = "GET"
    
    public init(endpoint: RMEndPoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
    
}
