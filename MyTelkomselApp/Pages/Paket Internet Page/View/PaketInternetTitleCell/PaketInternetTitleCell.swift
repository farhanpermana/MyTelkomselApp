//
//  PaketInternetTitleCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import UIKit

class PaketInternetTitleCell: UITableViewCell {
    
    static let identifier = "PaketInternetTitleCell"
    
    @IBOutlet weak var paketInternetTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        paketInternetTitle.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
