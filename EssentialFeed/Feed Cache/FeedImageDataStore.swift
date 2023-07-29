//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 16.05.2023.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
