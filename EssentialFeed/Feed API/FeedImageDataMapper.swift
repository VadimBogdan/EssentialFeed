//
//  FeedImageDataMapper.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 17.07.2023.
//

import Foundation

public final class FeedImageDataMapper {
    public enum Error: Swift.Error {
        case invalidData
    }

    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }

        return data
    }
}
