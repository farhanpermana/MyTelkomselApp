//
//  BelajarTitleCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

class BelajarTitleCell: UITableViewCell {
    
    static let identifier = "BelajarTitleCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      setupCell()
    }
    
    func setupCell() {
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
