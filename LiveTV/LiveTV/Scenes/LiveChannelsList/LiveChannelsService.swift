//
//  LiveChannelsService.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 06/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import Foundation

protocol ListChannelsServiceProtocol {
    func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)
}

class LiveChannelsService: ListChannelsServiceProtocol {
    func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure _: @escaping (Error) -> Void) {
        let data = LiveChannel(name: "test", logoUrl: "test", streamingUrl: "test", title: "test")
        success([data, data, data, data, data])
    }
}
