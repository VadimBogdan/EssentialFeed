//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 22.07.2023.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
