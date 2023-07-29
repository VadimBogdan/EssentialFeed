//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Vadym Bohdan on 26.04.2023.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
