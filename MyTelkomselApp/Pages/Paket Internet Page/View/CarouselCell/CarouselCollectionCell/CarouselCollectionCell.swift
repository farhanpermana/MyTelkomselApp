//
//  CarouselCollectionCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import UIKit

class CarouselCollectionCell: UICollectionViewCell {
    
    static let identifier = "CarouselCollectionCell"

    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var carouselImage: UIImageView!
    
    @IBOutlet weak var carouselTitle: UILabel!
    
    @IBOutlet weak var carouselSubTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        self.layer.cornerRadius = 4
        self.layer.backgroundColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1.0
        self.layer.masksToBounds = true
    }

}
