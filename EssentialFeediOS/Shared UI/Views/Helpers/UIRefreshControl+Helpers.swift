//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Vadym Bohdan on 09.05.2023.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
