//
//  ResourceLoadingView.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 17.07.2023.
//

import Foundation

public protocol ResourceLoadingView: AnyObject {
    func display(_ viewModel: ResourceLoadingViewModel)
}
