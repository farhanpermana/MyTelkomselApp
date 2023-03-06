//
//  LanggananTitleCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import UIKit

class LanggananTitleCell: UITableViewCell {
    
    static let identifier = "LanggananTitleCell"
    
    @IBOutlet weak var langgananTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
       
        setupCell()
    }
    
    func setupCell() {
        langgananTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
