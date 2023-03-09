//
//  PaketDibeliCollectionCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 08/03/23.
//

import UIKit

class PaketDibeliCollectionCell: UICollectionViewCell {
    
    static let identifier = "PaketDibeliCollectionCell"

    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        bgView.layer.backgroundColor = UIColor.clear.cgColor
        bgView.layer.cornerRadius = 4
        bgView.layer.borderWidth = 1.0
        bgView.layer.borderColor = UIColor.lightGray.cgColor
//        bgView.frame = CGRect(x: 1, y: 1, width: 100, height: 100)
        
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    }

}
