//
//  LiveTVUITests.swift
//  LiveTVUITests
//
//  Created by Mihai Pantiru on 06/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import XCTest

let channelsControllerId = "channelsViewController"
let channelsCollectionViewId = "channelsCollectionView"

class LiveTVUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false

        XCUIApplication().launch()

        UIApplication.shared.keyWindow?.layer.speed = 100
        XCUIDevice.shared().orientation = .faceUp
        XCUIDevice.shared().orientation = .portrait
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testChannelsControllerDisplayed() {
        sleep(3)

        let controller = XCUIApplication().otherElements[channelsControllerId]
        XCTAssert(controller.exists, "Channels view controller not available")
    }

    func testChannelCollectionViewDisplayed() {
        sleep(3)

        let collectionView = XCUIApplication().collectionViews[channelsCollectionViewId]
        XCTAssert(collectionView.exists, "Channels collection view is not available")
    }
}
