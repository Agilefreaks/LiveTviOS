//
//  ChannelCollectionViewCell.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 07/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ChannelCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!

    @IBOutlet weak var avPlayerView: AVPlayerView!

    func configure(with viewModel: LiveChannelViewModel) {
        self.titleLabel.text = viewModel.nameString
        self.imageView.image = UIImage(named: viewModel.imagePlaceholderName)

        let videoURL = URL(string: viewModel.streamingURLString)
        let avPlayer = AVPlayer(url: videoURL!)
        let castedLayer = avPlayerView.layer as! AVPlayerLayer
        castedLayer.player = avPlayer
        castedLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        avPlayer.volume = 0
        avPlayer.play()
    }
}
