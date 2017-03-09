//
//  LiveChannel.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 07/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import Foundation
import Apollo

struct LiveChannel: Equatable {
    let name: String
    var logoUrl: String?
    var streamingUrl: String?
    var title: String?

    static func ==(lhs: LiveChannel, rhs: LiveChannel) -> Bool {
        return lhs.name == rhs.name
    }
}

extension LiveChannel {
    init(apiObject: LiveChannelsQuery.Data.LiveChannel?) {
        self.name = apiObject?.name ?? ""
        self.streamingUrl = apiObject?.nowPlaying?.content?.url
    }
}
