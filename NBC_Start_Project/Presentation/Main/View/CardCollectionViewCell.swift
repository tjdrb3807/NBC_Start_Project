//
//  CardCollectionViewCell.swift
//  NBC_Start_Project
//
//  Created by 전성규 on 10/25/24.
//

import UIKit

final class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func layoutSubviews() {
        layer.cornerRadius = CardCollectionViewCellNameSpace.cornerRadius
        layer.borderWidth = CardCollectionViewCellNameSpace.borderWidth
        layer.borderColor = UIColor.systemGray2.cgColor
        backgroundColor = .white
        
        self.setThumbnailImageView()
    }
    
    private func setThumbnailImageView() {
        thumbnailImageView.layer.cornerRadius = CardCollectionViewCellNameSpace.thumbNailImageViewCornerRadius
        thumbnailImageView.clipsToBounds = true
        thumbnailImageView.backgroundColor = .lightGray
    }
}
