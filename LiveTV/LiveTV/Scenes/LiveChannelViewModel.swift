//
//  LiveChannelViewModel.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 07/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import Foundation

class LiveChannelViewModel {
    private let liveChannel: LiveChannel

    // MARK: - Initialization
    init(liveChannel input: LiveChannel) {
        self.liveChannel = input
    }

    var nameString: String {
        return liveChannel.name
    }

    var titleString: String {
        return liveChannel.title ?? ""
    }

    var logoURLString: String {
        return liveChannel.logoUrl ?? ""
    }

    var streamingURLString: String {
        return liveChannel.streamingUrl ?? ""
    }

    var imagePlaceholderName: String {
        return "missingVideo"
    }
}
