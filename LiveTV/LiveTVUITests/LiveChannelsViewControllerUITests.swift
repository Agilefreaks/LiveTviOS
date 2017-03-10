//
//  LiveTVUITests.swift
//  LiveChannelsViewControllerUITests
//
//  Created by Mihai Pantiru on 06/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import XCTest

let channelsControllerId = "channelsViewController"
let channelsCollectionViewId = "channelsCollectionView"

class LiveChannelsViewControllerUITests: XCTestCase {

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

    func testFirstChannelCellDisplayed() {
        sleep(3)

        let collectionView = XCUIApplication().collectionViews[channelsCollectionViewId]
        let firstCell = collectionView.cells["channelCell_0"]
        XCTAssert(firstCell.exists)
    }
}

extension LiveChannelsViewControllerUITests {
    // LC-5 acceptance UI tests

    func testExpandChannelOnTapStartsHero() {
        let collectionView = XCUIApplication().collectionViews["channelsCollectionView"]
        let secondCell = collectionView.cells["channelCell_1"]
        let cellChannelName = secondCell.value as! String
        secondCell.tap()

        sleep(3)

        let videoPlayer = XCUIApplication().otherElements["heroChannelPlayerIdentifier"]
        let videoPlayerChannelName = videoPlayer.value as! String

        XCTAssert(cellChannelName == videoPlayerChannelName, "Live channels after tap doesn't match")
    }
}
