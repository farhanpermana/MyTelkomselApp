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
        self.layer.backgroundColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1.0
        self.layer.masksToBounds = true
    }

}
