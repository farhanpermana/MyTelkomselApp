//
//  PaketInternetModels.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import Foundation

struct PaketModel {
    let besarPaket: String
    let beforePrice: String
    let afterPrice: String
    let namaPaket: String
    let durasiPaket: String
    let isBelajar: Bool
    let rincianPaket: [RincianPaketModel]
}
