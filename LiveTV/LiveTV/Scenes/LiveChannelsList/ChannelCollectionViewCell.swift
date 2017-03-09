//
//  ChannelCollectionViewCell.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 07/03/2017.
//  Copyright © 2017 AgileFreaks. All rights reserved.
//

import UIKit

class ChannelCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!

    func configure(with viewModel: LiveChannelViewModel) {
        self.titleLabel.text = viewModel.titleString
        self.imageView.image = UIImage(named: viewModel.imagePlaceholderName)
    }
}
