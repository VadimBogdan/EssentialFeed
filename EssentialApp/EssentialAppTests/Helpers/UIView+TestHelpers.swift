//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Vadym Bohdan on 26.06.2023.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
