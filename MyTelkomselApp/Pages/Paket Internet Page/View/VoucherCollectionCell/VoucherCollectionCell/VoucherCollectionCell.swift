//
//  VoucherCollectionCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

class VoucherCollectionCell: UICollectionViewCell {
    
    static let identifier = "VoucherCollectionCell"

    @IBOutlet weak var voucherImage: UIImageView!
    @IBOutlet weak var voucherName: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        self.layer.cornerRadius = 4
//        self.layer.backgroundColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1
        self.layer.masksToBounds = true
        bgView.backgroundColor = UIColor.white
        bgView.clipsToBounds = false
        bgView.layer.shadowColor = UIColor.black.cgColor
        bgView.layer.shadowOpacity = 0.5
        bgView.layer.shadowOffset = CGSize(width: 0, height: 2)
        bgView.layer.shadowRadius = 4
//        bgView.layer.shadowPath = UIBezierPath(roundedRect: bgView.bounds, cornerRadius: bgView.layer.cornerRadius).cgPath

    }
    
    func config(model: VoucherModels) {
        voucherImage.image = UIImage(named: model.bannerLabel)
        voucherName.text = model.titleLabel
    }

}
