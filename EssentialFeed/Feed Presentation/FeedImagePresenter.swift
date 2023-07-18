//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 11.05.2023.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
