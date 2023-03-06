//
//  ViewController.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import UIKit

enum PaketInternetSections: Int {
    case titlePaketInternet = 0
    case carousel = 1
    case titleLangganan = 2
    case listLangganan = 3
    case titlePopular = 4
    case listPopular = 5
    case titleVoucher = 6
    case listVoucher = 7
    case titleBelajar = 8
    case listBelajar = 9
}

class PaketInternetController: UIViewController {
    
    @IBOutlet weak var paketInternetTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    func setupTable() {
        paketInternetTable.register(UINib(nibName: "PaketInternetTitleCell", bundle: nil), forCellReuseIdentifier: PaketInternetTitleCell.identifier)
        
        paketInternetTable.register(CarouselTableCell.self, forCellReuseIdentifier: CarouselTableCell.identifier)
        
        paketInternetTable.register(UINib(nibName: "LanggananTitleCell", bundle: nil), forCellReuseIdentifier: LanggananTitleCell.identifier)
        
        paketInternetTable.register(LanggananTableCell.self, forCellReuseIdentifier: LanggananTableCell.identifier)
        
        paketInternetTable.register(UINib(nibName: "PopularTitleCell", bundle: nil), forCellReuseIdentifier: PopularTitleCell.identifier)
        
        paketInternetTable.separatorStyle = .none
        paketInternetTable.delegate = self
        paketInternetTable.dataSource = self
    }


}

extension PaketInternetController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return paketInternetTable.rowHeight
        case 1:
            return 110
        case 2:
            return 40
        case 3:
            return 190
        case 4:
            return 40
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sections = PaketInternetSections(rawValue: indexPath.section)
        switch sections {
        case .titlePaketInternet:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: PaketInternetTitleCell.identifier) as? PaketInternetTitleCell else {
                return UITableViewCell()
            }
            
            return cell
        case .carousel:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: CarouselTableCell.identifier) as?
                    CarouselTableCell else {
                return UITableViewCell()
            }
            
            cell.setupTable()
            return cell
        case .titleLangganan:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: LanggananTitleCell.identifier) as? LanggananTitleCell else {
                return UITableViewCell()
            }
            
            
            return cell
        case .listLangganan:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: LanggananTableCell.identifier) as? LanggananTableCell else {
                return UITableViewCell()
            }
            
            cell.setupTable()
            return cell
        case .titlePopular:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: PopularTitleCell.identifier) as? PopularTitleCell else {
                return UITableViewCell()
            }
            
            return cell
//        case .listPopular:
//        case .titleVoucher:
//        case .listVoucher:
//        case .titleBelajar:
//        case .listBelajar:
        
        default:
            return UITableViewCell()
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    
}
