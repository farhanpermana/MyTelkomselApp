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

class BeliPaketController: UIViewController, moveToPembayaranBerhasilPageDelegate {
    
    @IBOutlet weak var beliPaketTableView: UITableView!
    
    var beliPaket: PaketModel?
    
    var paketDatas: [PaketModel] = []
    
    var delegate: moveToPembayaranBerhasilPageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        
        delegate = self
    }
    
    func setupTable() {
        
        beliPaketTableView.register(UINib(nibName: "PaketPriceTableCell", bundle: nil), forCellReuseIdentifier: PaketPriceTableCell.identifier)
        
        beliPaketTableView.register(UINib(nibName: "MasaAktifPaketCell", bundle: nil), forCellReuseIdentifier: MasaAktifPaketCell.identifier)
        
        beliPaketTableView.register(UINib(nibName: "RincianPaketCell", bundle: nil), forCellReuseIdentifier: RincianPaketCell.identifier)
        
        beliPaketTableView.register(UINib(nibName: "DescPaketCell", bundle: nil), forCellReuseIdentifier: DescPaketCell.identifier)
        
        beliPaketTableView.register(UINib(nibName: "BeliSekarangCell", bundle: nil), forCellReuseIdentifier: BeliSekarangCell.identifier)
        
//        beliPaketTableView.separatorStyle = 
        beliPaketTableView.delegate = self
        beliPaketTableView.dataSource = self
        
    }
    
    func moveToPembayaranBerhasilPage() {
        let vc = PembayaranBerhasilController()
        vc.datasPaket = paketDatas
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension BeliPaketController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sections = BeliPaketSections(rawValue: section)
        switch sections {
        case .rincianPaket:
            return beliPaket?.rincianPaket.count ?? 0
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
//            return beliPaketTableView.rowHeight
            return 60
        case 1:
            return 50
        case 2:
            return 150
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
        
        guard let rincianPaket = self.beliPaket else { return UITableViewCell() }
        
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
        case .rincianPaket:
            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: RincianPaketCell.identifier, for: indexPath) as? RincianPaketCell
            else {
                return UITableViewCell()
            }
            cell.config(model: beliPaket!.rincianPaket[indexPath.row])
//            cell.rincianPaketLabel.text = beliPaket?.rincianPaket
            return cell
        case .descPaket:
            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: DescPaketCell.identifier, for: indexPath) as? DescPaketCell
            else {return UITableViewCell()}
//            cell.descPaketLabel.text = beliPaket?.descPaket
            return cell
        case .beliButton:
            guard let cell = beliPaketTableView.dequeueReusableCell(withIdentifier: BeliSekarangCell.identifier, for: indexPath) as? BeliSekarangCell
            else {
                return UITableViewCell()
            }
            
            cell.delegate = self.delegate

            return cell
        default:
            return UITableViewCell()
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }

    
}
