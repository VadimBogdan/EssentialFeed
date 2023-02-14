//
//  EssentialFeedTests.swift
//  RemoteFeedLoaderTests
//
//  Created by Vadym Bohdan on 10.02.2023.
//

import XCTest
@testable import EssentialFeed

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
}
