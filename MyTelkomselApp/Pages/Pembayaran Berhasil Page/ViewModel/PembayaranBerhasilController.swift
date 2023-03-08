//
//  PembayaranBerhasilController.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 08/03/23.
//

import UIKit

enum PembayaranBerhasilSections: Int {
    case pembayaranBerhasil = 0
    case paketDibeli = 1
}



class PembayaranBerhasilController: UIViewController {
    
    var berhasilBayar: PaketModel?
    
    var datasPaket: [PaketModel] = []

    @IBOutlet weak var pembayaranBerhasilTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    func setupTable() {
        
        pembayaranBerhasilTableView.register(UINib(nibName: "BerhasilTextCell", bundle: nil), forCellReuseIdentifier: BerhasilTextCell.identifier)
        
        pembayaranBerhasilTableView.register(PaketDibeliCell.self, forCellReuseIdentifier: PaketDibeliCell.identifier)
        
        pembayaranBerhasilTableView.delegate = self
        pembayaranBerhasilTableView.dataSource = self
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PembayaranBerhasilController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
//            return beliPaketTableView.rowHeight
            return 450
        case 1:
            return 130
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sections = PembayaranBerhasilSections(rawValue: indexPath.section)
        
        switch sections {
        case .pembayaranBerhasil:
            guard let cell = pembayaranBerhasilTableView.dequeueReusableCell(withIdentifier: BerhasilTextCell.identifier, for: indexPath) as? BerhasilTextCell else {
                return UITableViewCell()
            }
            
            return cell
        case .paketDibeli:
            guard let cell = pembayaranBerhasilTableView.dequeueReusableCell(withIdentifier: PaketDibeliCell.identifier, for: indexPath) as? PaketDibeliCell else {
                return UITableViewCell()
            }
            cell.setupTable()
            return cell
        default:
            return UITableViewCell()
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    
}
