//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 11.05.2023.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        return NSLocalizedString("FEED_VIEW_TITLE",
                                 tableName: "Feed",
                                 bundle: Bundle(for: FeedPresenter.self),
                                 comment: "Title for the feed view")
    }
}
