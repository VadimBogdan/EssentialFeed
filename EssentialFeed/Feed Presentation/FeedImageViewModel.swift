//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 11.05.2023.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
