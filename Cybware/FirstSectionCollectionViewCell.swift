//
//  FirstSectionCollectionViewCell.swift
//  Cybware
//
//  Created by Batch-1 on 22/05/24.
//

import UIKit

class FirstSectionCollectionViewCell: UICollectionViewCell {

    @IBOutlet var textLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            // Make the image view circular
            imageView.layer.cornerRadius = imageView.frame.size.width / 2
            imageView.clipsToBounds = true
            imageView.layer.masksToBounds = true
        }
}
