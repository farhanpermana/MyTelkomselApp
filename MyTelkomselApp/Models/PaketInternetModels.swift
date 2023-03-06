//
//  PaketInternetModels.swift
//  MyTelkomselApp
//
//  Created by Phinconers on 06/03/23.
//

import Foundation

struct PaketModel {
    let besarPaket: String
    let beforePrice: Double
    let afterPrice: Double
    let namaPaket: String
    let durasiPaket: String
    let rincianPaket: [RincianPaketModel]
}
