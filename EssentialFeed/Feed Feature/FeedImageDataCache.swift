//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 03.06.2023.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
