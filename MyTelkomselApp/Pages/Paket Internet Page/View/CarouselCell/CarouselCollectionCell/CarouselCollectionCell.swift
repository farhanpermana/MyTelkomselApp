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
        self.layer.borderWidth = 0.0
        self.layer.masksToBounds = true
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            
            UIColor(red: 1, green: 0.318, blue: 0.184, alpha: 1).cgColor,

            UIColor(red: 0.867, green: 0.141, blue: 0.463, alpha: 1).cgColor

          ]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bgView.bounds
        bgView.layer.insertSublayer(gradientLayer, at: 0)

    }
    
    func config(model: CarouselModel) {
        carouselImage.image = UIImage(named: model.imageLabel)
        carouselTitle.text = model.titleLabel
        carouselSubTitle.text = model.subTitleLabel
    }

}
