//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 21.03.2023.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
