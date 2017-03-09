//
//  LiveChannelsViewControllerTests.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 08/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import XCTest
import Cuckoo
@testable import LiveTV

class LiveChannelsViewControllerTests: XCTestCase {

    var sut: LiveChannelsViewController!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.

        sut = LiveChannelsViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

/*
    func testExpandFromLiveChannelsToRouter() {
        let data = LiveChannel(name: "test", logoUrl: "test", streamingUrl: "test", title: "test")
        let routerMock = MockLiveChannelsRouter()
        stub(routerMock) { mock in
            when(mock.expandLiveChannel(channel: equal(to: data))).thenDoNothing()
        }

        sut.router = routerMock
        
        let liveChannelViewModel = LiveChannelViewModel(liveChannel: data)
        let loadViewModel = LiveChannels.Load.ViewModel(liveChannelsViewModels: [liveChannelViewModel])
        
        sut.displaySomething(viewModel: loadViewModel)

        verify(secondMock).expandLiveChannel(channel: equal(to: data))
    }
 */
}
