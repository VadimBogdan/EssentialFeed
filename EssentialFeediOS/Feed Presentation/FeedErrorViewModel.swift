//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Vadym Bohdan on 09.05.2023.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
