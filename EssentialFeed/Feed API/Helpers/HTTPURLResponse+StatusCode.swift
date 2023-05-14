//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Vadym Bohdan on 14.05.2023.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
