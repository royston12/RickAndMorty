//
//  RMService.swift
//  RickAndMorty
//
//  Created by Royston Vishal on 02/03/25.
//

import Foundation

final class RMService {
    
    static let shared = RMService()
    
    
    enum RMServiceError: Error {
        case failedToCreateURLRequest
        case failedToGetData
    }
    
    private init() {}
    
    
    public func execute<T: Codable>(request: RMRequest, expecting type: T.Type, completion: @escaping(Result<T, Error>) -> Void) {
        
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateURLRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            do {
                let json = try JSONDecoder().decode(type.self, from: data)
                completion(.success(json))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
        
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        
        guard let url = rmRequest.url else { return nil}
        
        let urlRequest = URLRequest(url: url)
        let httpMethod = rmRequest.httpMethod
        
        return urlRequest
    }

    
}
