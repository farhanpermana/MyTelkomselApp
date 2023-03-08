//
//  RincianPaketCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

class RincianPaketCell: UITableViewCell {
    
    static let identifier = "RincianPaketCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var internetLabel: UILabel!
    
    @IBOutlet weak var omgLabel: UILabel!
    
    @IBOutlet weak var smsTselLabel: UILabel!
    
    @IBOutlet weak var voiceTselLabel: UILabel!
    
    @IBOutlet weak var internetValueLabel: UILabel!
    
    @IBOutlet weak var omgValueLabel: UILabel!
    
    @IBOutlet weak var smsTselValueLabel: UILabel!
    
    @IBOutlet weak var voiceTselValueLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setupCell() {
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        internetLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        omgLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        smsTselLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        voiceTselLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        internetValueLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        omgValueLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        smsTselValueLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        voiceTselValueLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
