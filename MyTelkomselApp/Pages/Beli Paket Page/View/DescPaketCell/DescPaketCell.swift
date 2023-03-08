//
//  DescPaketCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

class DescPaketCell: UITableViewCell {
    
    static let identifier = "DescPaketCell"

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        descLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
