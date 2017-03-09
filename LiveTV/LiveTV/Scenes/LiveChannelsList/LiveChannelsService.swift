//
//  LiveChannelsService.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 06/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import Foundation
import Apollo

protocol ListChannelsServiceProtocol {
    func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void)
}

class LiveChannelsService: ListChannelsServiceProtocol {
    let apolloClient = ApolloClient(url: URL(string: "https://livetv-160809.appspot.com/graphql")!)

    func getLiveChannelsList(success: @escaping ([LiveChannel]) -> Void, failure: @escaping (Error) -> Void) {

        apolloClient.fetch(query: LiveChannelsQuery()) { result, error in

            if let error = error { failure(error); return }
            guard let result = result else {
                let errorTemp = NSError(domain: "Query error", code: 400, userInfo: ["description": "No query result"])
                failure(errorTemp)
                return }

            if let errors = result.errors {
                let errorTemp = NSError(domain: "Query error", code: 400, userInfo: ["description": "Errors in query result: \(errors)"])
                failure(errorTemp)
            }

            guard let data = result.data else {
                let errorTemp = NSError(domain: "Query error", code: 400, userInfo: ["description": "No query result data"])
                failure(errorTemp); return }

            guard let dataChannels = data.liveChannels else { success([]); return }
            let results = dataChannels.map({ LiveChannel(apiObject: $0) })
            success(results)
        }
    }
}
