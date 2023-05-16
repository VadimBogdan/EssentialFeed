//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 16.05.2023.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
