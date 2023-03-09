//
//  VoucherTitleCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

class VoucherTitleCell: UITableViewCell {
    
    static let identifier = "VoucherTitleCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var lihatSemuaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        lihatSemuaLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lihatSemuaLabel.textColor = UIColor.red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
