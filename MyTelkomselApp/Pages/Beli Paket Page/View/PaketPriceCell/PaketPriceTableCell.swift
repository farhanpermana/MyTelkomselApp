//
//  PaketPriceTableCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

class PaketPriceTableCell: UITableViewCell {
    
    static let identifier = "PaketPriceTableCell"
    
    @IBOutlet weak var beforePriceLabel: UILabel!
    
    @IBOutlet weak var afterPriceLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        beforePriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        afterPriceLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
