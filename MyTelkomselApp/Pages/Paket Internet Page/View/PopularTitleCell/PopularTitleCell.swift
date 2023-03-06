//
//  PopularTitleCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import UIKit

class PopularTitleCell: UITableViewCell {
    
    static let identifier = "PopularTitleCell"
    
    @IBOutlet weak var popularTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        popularTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
