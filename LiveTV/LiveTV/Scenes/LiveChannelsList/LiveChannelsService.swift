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
    func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) {
        let epix = LiveChannel(name: "Epix", logoUrl: "test", streamingUrl: "test", title: "test epix")
        let epix2 = LiveChannel(name: "Epix 2", logoUrl: "test", streamingUrl: "test", title: "test epix 2")
        let epix3 = LiveChannel(name: "Epix 3", logoUrl: "test", streamingUrl: "test", title: "test epix 3")
        let epix4 = LiveChannel(name: "Epix 4", logoUrl: "test", streamingUrl: "test", title: "test epix 4")
        success([epix, epix2, epix3, epix4])

        let errorTemp = NSError(domain: "", code: 300, userInfo: nil)
        failure(errorTemp)
    }
}
