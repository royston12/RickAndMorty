//
//  RMEndPoint.swift
//  RickyAndMorty
//
//  Created by Royston Vishal on 29/05/24.
//

import Foundation

/// Represents unique endpoints
@frozen enum RMEndPoint: String {
    ///Endpoint to get character info
    case character
    ///Endpoint to get location info
    case location
    ///Endpoint to get episode info
    case episode
}
