//
//  BerhasilTextCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 08/03/23.
//

import UIKit

class BerhasilTextCell: UITableViewCell {
    
    static let identifier = "BerhasilTextCell"

    @IBOutlet weak var titleBerhasilLabel: UILabel!
    
    @IBOutlet weak var subTitleBerhasilLabel: UILabel!
    
    @IBOutlet weak var checkMarkImg: UIImageView!
    
    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet weak var secondView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        checkMarkImg.tintColor = UIColor.white
        
        firstView.layer.cornerRadius = firstView.frame.width / 2
        
        secondView.layer.cornerRadius = secondView.frame.width / 2
        
        titleBerhasilLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        subTitleBerhasilLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
