//
//  ViewController.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import UIKit

protocol PaketProtocol {
    func paketModel()
    func carouselModel()
    func voucherModel()
}

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

class PaketInternetController: UIViewController, moveToBeliPaketPageDelegate {

    @IBOutlet weak var paketInternetTable: UITableView!
    
    var paketInternetDatas: [PaketModel] = []
    
    var datasCarousel: [CarouselModel] = []
    
    var delegate: moveToBeliPaketPageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        
        // delegate = self for pagetrans
        delegate = self
    }
    
    func setupTable() {
        paketInternetTable.register(UINib(nibName: "PaketInternetTitleCell", bundle: nil), forCellReuseIdentifier: PaketInternetTitleCell.identifier)
        
        paketInternetTable.register(CarouselTableCell.self, forCellReuseIdentifier: CarouselTableCell.identifier)
        
        paketInternetTable.register(UINib(nibName: "LanggananTitleCell", bundle: nil), forCellReuseIdentifier: LanggananTitleCell.identifier)
        
        paketInternetTable.register(LanggananTableCell.self, forCellReuseIdentifier: LanggananTableCell.identifier)
        
        paketInternetTable.register(UINib(nibName: "PopularTitleCell", bundle: nil), forCellReuseIdentifier: PopularTitleCell.identifier)
        
        paketInternetTable.register(PopularTableCell.self, forCellReuseIdentifier: PopularTableCell.identifier)
        
        paketInternetTable.register(UINib(nibName: "VoucherTitleCell", bundle: nil), forCellReuseIdentifier: VoucherTitleCell.identifier)
        
        paketInternetTable.register(VoucherTableCell.self, forCellReuseIdentifier: VoucherTableCell.identifier)
        
        paketInternetTable.register(UINib(nibName: "BelajarTitleCell", bundle: nil), forCellReuseIdentifier: BelajarTitleCell.identifier)
        
        paketInternetTable.register(BelajarTableCell.self, forCellReuseIdentifier: BelajarTableCell.identifier)
        
        
        
        paketInternetTable.separatorStyle = .none
        paketInternetTable.delegate = self
        paketInternetTable.dataSource = self
        paketModel()
    }
    
    // page trans func
    func moveToBeliPaketPage(model: PaketModel) {
        let vc = BeliPaketController()
        vc.beliPaket = model
        self.navigationController?.pushViewController(vc, animated: true)
        
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
            return 35
        case 3:
            return 150
        case 4:
            return 35
        case 5:
            return 150
        case 6:
            return 40
        case 7:
            return 150
        case 8:
            return 35
        case 9:
            return 150
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
            cell.carouselDatas = datasCarousel
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
            cell.namaPaketDatas = paketInternetDatas
            
            // calling page trans
            cell.moveToBeliPaketDelegate = self.delegate
            cell.setupTable()
            return cell
        case .titlePopular:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: PopularTitleCell.identifier) as? PopularTitleCell else {
                return UITableViewCell()
            }
            
            return cell
        case .listPopular:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: PopularTableCell.identifier) as? PopularTableCell else {
                return UITableViewCell()
            }
           
            cell.popularDatas = paketInternetDatas
            cell.setupTable()
            return cell
        case .titleVoucher:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: VoucherTitleCell.identifier) as?
                    VoucherTitleCell else {
                return UITableViewCell()
            }
            
            return cell
        case .listVoucher:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: VoucherTableCell.identifier) as?
                    VoucherTableCell else {
                return UITableViewCell()
            }
            
            cell.setupTable()
            return cell

        case .titleBelajar:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: BelajarTitleCell.identifier) as?
                    BelajarTitleCell else {
                return UITableViewCell()
            }
            
            return cell

        case .listBelajar:
            guard let cell = paketInternetTable.dequeueReusableCell(withIdentifier: BelajarTableCell.identifier) as?
                    BelajarTableCell else {
                return UITableViewCell()
            }
            cell.belajarDatas = paketInternetDatas
            cell.setupTable()
            return cell
        
        default:
            return UITableViewCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // section 3
        if indexPath.section == 3 {
            moveToBeliPaketPage(model: paketInternetDatas[indexPath.row])
        }
    }
    
    
}


extension PaketInternetController: PaketProtocol {
    func carouselModel() {
        let carousel1 = CarouselModel(imageLabel: "carousel1", titleLabel: "Internet OMG!", subTitleLabel: "Bisa YouTube dan Sosmed")
        let carousel2 = CarouselModel(imageLabel: "carousel1", titleLabel: "Internet OMG!", subTitleLabel: "Bisa YouTube dan Sosmed")
        datasCarousel.append(carousel1)
        datasCarousel.append(carousel2)
    }
    
    func voucherModel() {
        
//        let data1 = VoucherModels(bannerLabel: "banner1", titleLabel: "Internet OMG!", gradientView: "gradient1")
        
    }
    
    func paketModel() {
        let data1 = MyTelkomselApp.PaketModel(besarPaket: "14 GB", beforePrice: 99.000, afterPrice: 96.000, namaPaket: "Internet OMG!", durasiPaket: "30 Hari", rincianPaket: [
            RincianPaketModel(internetLabel: "4.5 GB", omgLabel: "2 GB", smsTselLabel: "60 SMS", voiceTsel: "100 Mins", descPaket: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        ])
        
        let data2 = MyTelkomselApp.PaketModel(besarPaket: "20 GB", beforePrice: 99.000, afterPrice: 96.000, namaPaket: "Internet OMG!", durasiPaket: "30 Hari", rincianPaket: [
            RincianPaketModel(internetLabel: "4.5 GB", omgLabel: "2 GB", smsTselLabel: "60 SMS", voiceTsel: "100 Mins", descPaket: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        ])
        
        let data3 = MyTelkomselApp.PaketModel(besarPaket: "27 GB", beforePrice: 99.000, afterPrice: 96.000, namaPaket: "Internet OMG!", durasiPaket: "30 Hari", rincianPaket: [
            RincianPaketModel(internetLabel: "4.5 GB", omgLabel: "2 GB", smsTselLabel: "60 SMS", voiceTsel: "100 Mins", descPaket: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        ])
        
        let data4 = MyTelkomselApp.PaketModel(besarPaket: "30 GB", beforePrice: 99.000, afterPrice: 96.000, namaPaket: "Internet OMG!", durasiPaket: "30 Hari", rincianPaket: [
            RincianPaketModel(internetLabel: "4.5 GB", omgLabel: "2 GB", smsTselLabel: "60 SMS", voiceTsel: "100 Mins", descPaket: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        ])
        
        let data5 = MyTelkomselApp.PaketModel(besarPaket: "37 GB", beforePrice: 99.000, afterPrice: 96.000, namaPaket: "Internet OMG!", durasiPaket: "30 Hari", rincianPaket: [
            RincianPaketModel(internetLabel: "4.5 GB", omgLabel: "2 GB", smsTselLabel: "60 SMS", voiceTsel: "100 Mins", descPaket: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
        ])
        paketInternetDatas.append(data1)
        paketInternetDatas.append(data2)
        paketInternetDatas.append(data3)
        paketInternetDatas.append(data4)
        paketInternetDatas.append(data5)
    }
    
    
}
