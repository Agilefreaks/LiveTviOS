//
//  LiveChannel.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 07/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import Foundation

struct LiveChannel: Equatable {
    let name: String
    let logoUrl: String?
    let streamingUrl: String?
    let title: String?

    static func ==(lhs: LiveChannel, rhs: LiveChannel) -> Bool {
        return lhs.name == rhs.name
    }
}
