//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 10.02.2023.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
