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
    
    func config(model: PaketModel) {
        // strikethrough label
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Rp.\(model.beforePrice)")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        beforePriceLabel.attributedText = attributeString

        afterPriceLabel.text = "Rp.\(model.afterPrice)"
        if model.afterPrice == "" {
            beforePriceLabel.isHidden = true
            afterPriceLabel.text = "Free"
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
