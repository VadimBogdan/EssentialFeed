//
//  CommentsUIComposer.swift
//  EssentialApp
//
//  Created by Vadym Bohdan on 20.07.2023.
//

import UIKit
import Combine
import EssentialFeed
import EssentialFeediOS

public final class CommentsUIComposer {
    private init() {}
    
    private typealias FeedPresentationAdapter = LoadResourcePresentationAdapter<[FeedImage], FeedViewAdapter>
    
    public static func commentsComposedWith(commentsLoader: @escaping () -> AnyPublisher<[FeedImage], Error>) -> ListViewController {
        let presentationAdapter = FeedPresentationAdapter(loader: commentsLoader)
        
        let feedController = makeListViewController(title: FeedPresenter.title)
        feedController.onRefresh = presentationAdapter.loadResource
        
        let presenter = LoadResourcePresenter(
            resourceView: FeedViewAdapter(
                controller: feedController,
                imageLoader: { _ in Empty<Data, Error>().eraseToAnyPublisher() }),
            loadingView: WeakRefVirtualProxy(feedController),
            errorView: WeakRefVirtualProxy(feedController),
            mapper: FeedPresenter.map)
        
        presentationAdapter.presenter = presenter
        return feedController
    }
    
    private static func makeListViewController(title: String) -> ListViewController {
        let bundle = Bundle(for: ListViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let feedController = storyboard.instantiateInitialViewController() as! ListViewController
        feedController.title = title
        return feedController
    }
}
