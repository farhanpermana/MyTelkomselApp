//
//  BeliPaketController.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 07/03/23.
//

import UIKit

enum BeliPaketSections: Int {
    case paketPrice = 0
    case masaAktifPaket = 1
    case rincianPaket = 2
    case descPaket = 3
    case beliButton = 4
}

protocol moveToBeliPaketPageDelegate {
    func moveToBeliPaketPage(model: PaketModel)
}

class BeliPaketController: UIViewController {
    
    @IBOutlet weak var beliPaketTableView: UITableView!
    
    var beliPaket: PaketModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    func setupTable() {
        
        beliPaketTableView.register(UINib(nibName: "PaketPriceTableCell", bundle: nil), forCellReuseIdentifier: PaketPriceTableCell.identifier)
        
        beliPaketTableView.register(UINib(nibName: "MasaAktifPaketCell", bundle: nil), forCellReuseIdentifier: MasaAktifPaketCell.identifier)
        
//        beliPaketTableView.separatorStyle = 
        beliPaketTableView.delegate = self
        beliPaketTableView.dataSource = self
        
    }

}

extension BeliPaketController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
//            return beliPaketTableView.rowHeight
            return 60
        case 1:
            return 50
        case 2:
            return 50
        case 3:
            return 190
        case 4:
            return 100
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sections = BeliPaketSections(rawValue: indexPath.section)
        switch sections {
        case .paketPrice:
            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: PaketPriceTableCell.identifier, for: indexPath) as? PaketPriceTableCell else { return UITableViewCell()
            }
            
            return cell
        case .masaAktifPaket:
            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: MasaAktifPaketCell.identifier, for: indexPath) as? MasaAktifPaketCell
            else { return UITableViewCell()
                
            }
//            cell.masaAktifPaketLabel.text = beliPaket?.masaAktifPaket
            return cell
//        case .rincianPaket:
//            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: "BeliPaketRincianCell", for: indexPath) as! BeliPaketRincianCell
//            cell.rincianPaketLabel.text = beliPaket?.rincianPaket
//            return cell
//        case .descPaket:
//            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: "BeliPaketDescCell", for: indexPath) as! BeliPaketDescCell
//            cell.descPaketLabel.text = beliPaket?.descPaket
//            return cell
//        case .beliButton:
//            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: "BeliPaketButtonCell", for: indexPath) as! BeliPaketButtonCell
//            cell.delegate = self
//            return cell
        default:
            return UITableViewCell()
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }

    
}
