//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Vadym Bohdan on 26.04.2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
