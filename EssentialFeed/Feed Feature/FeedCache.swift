//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 03.06.2023.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
