//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 03.06.2023.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
