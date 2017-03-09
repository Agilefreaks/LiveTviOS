//
//  AVPlayer+Extensions.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 09/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class AVPlayerView: UIView {
    override class var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
