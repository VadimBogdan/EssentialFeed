//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 21.03.2023.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
