//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Vadym Bohdan on 30.04.2023.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
