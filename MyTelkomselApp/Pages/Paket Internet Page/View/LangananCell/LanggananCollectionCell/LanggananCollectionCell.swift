//
//  LanggananCollectionCell.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import UIKit

//protocol PaketCollectionDelegate {
//    func moveToBeliPaketPage()
//}

class LanggananCollectionCell: UICollectionViewCell {
    
    static let identifier = "LanggananCollectionCell"
    
//    var delegate: PaketCollectionDelegate?

    @IBOutlet weak var gbPaketLabel: UILabel!
    
    @IBOutlet weak var beforePriceLabel: UILabel!
    
    @IBOutlet weak var afterPriceLabel: UILabel!
    
    @IBOutlet weak var internetOmgLabel: UILabel!
    
    @IBOutlet weak var durasiLabel: UILabel!
    
    @IBOutlet weak var sandTimerIcon: UIImageView!
    
    @IBOutlet weak var bookmarkIcon: UIImageView!
    
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var durasiView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell() {
        bgView.layer.backgroundColor = UIColor.clear.cgColor
        bgView.layer.cornerRadius = 4
        bgView.layer.borderWidth = 1.0
        bgView.layer.borderColor = UIColor.lightGray.cgColor
        
        
        durasiView.layer.backgroundColor = UIColor.lightGray.cgColor
        durasiView.layer.cornerRadius = 16
        
        durasiLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        
        gbPaketLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        beforePriceLabel.font = UIFont.systemFont(ofSize: 12, weight: .light)
        
        afterPriceLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        internetOmgLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
    }

    func config(model: PaketModel) {
        gbPaketLabel.text = model.besarPaket
        // strikethrough label
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Rp.\(model.beforePrice)")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        beforePriceLabel.attributedText = attributeString

        afterPriceLabel.text = "Rp. \(model.afterPrice)"
        internetOmgLabel.text = model.namaPaket
        
        
    }
    
//    @IBAction func tapBuyPaket(_ sender: Any) {
//        print("button clicked")
//        delegate?.moveToBeliPaketPage()
//    }
    

    
}
