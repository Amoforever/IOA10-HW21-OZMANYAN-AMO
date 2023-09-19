//
//  Model of Cards.swift
//  IOA10-HW21-OZMANYAN AMO
//
//  Created by Amahastla on 20.09.2023.
//

import Foundation

struct Cards: Decodable {
    let cards: [DataCards]
}

struct DataCards: Decodable {
    let name: String?
    let cmc: Int?
    let manaCost: String?
    let type: String?
}
