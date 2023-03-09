//
//  BeliSekarangCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 08/03/23.
//

import UIKit

protocol moveToPembayaranBerhasilPageDelegate {
    func moveToPembayaranBerhasilPage()
}

class BeliSekarangCell: UITableViewCell {
    
    static let identifier = "BeliSekarangCell"

    @IBOutlet weak var beliButton: UIButton!
    
    var delegate: moveToPembayaranBerhasilPageDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        beliButton.layer.cornerRadius = 4
        beliButton.tintColor = UIColor.red
        beliButton.setTitle("Beli Sekarang", for: .normal)
        beliButton.frame = CGRect(x: 0, y: 0, width: 335, height: 02)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func tapShowAllButton(_ sender: Any) {
        print("button clicked")
        self.delegate?.moveToPembayaranBerhasilPage()
    }
    
}
