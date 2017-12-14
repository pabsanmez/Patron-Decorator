//
//  MainTableCellsEnum.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 14/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

enum MainTableCellsEnum {
    case itemPriceCell
    
    static let allCells = [itemPriceCell]
    
    var idCell: String {
        switch self {
        case .itemPriceCell:
            return "ItemPriceTableViewCell"
        }
    }
    
}
