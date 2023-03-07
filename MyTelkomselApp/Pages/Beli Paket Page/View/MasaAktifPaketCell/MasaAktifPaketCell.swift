//
//  MasaAktifPaketCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

class MasaAktifPaketCell: UITableViewCell {
    
    static let identifier = "MasaAktifPaketCell"
    
    @IBOutlet weak var masaAktifTitle: UILabel!
    
    @IBOutlet weak var durasiPaketLabel: UILabel!
    
    @IBOutlet weak var durasiPaketView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        durasiPaketView.layer.backgroundColor = UIColor.lightGray.cgColor
        durasiPaketView.layer.cornerRadius = 16
//        durasiPaketView.layer.frame = CGRect(x: 0, y: 0, width: 99, height: 36)
        
        masaAktifTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        durasiPaketLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
