//
//  HouseExtrasEnum.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

enum HouseTypesExtrasEnum {
    case cottage
    case flat
    case addShower
    case addAppleTv
    case addiMacPro
    
    static let allExtras = [addShower, addAppleTv, addiMacPro]
    static let allHouseTypes = [cottage, flat]

    
    var getCellTitle: String {
        switch self {
        case .addShower:
            return "Shower"
        case .addAppleTv:
            return "Apple TV"
        case .addiMacPro:
            return "iMac Pro"
        case .cottage:
            return "Cottage"
        case .flat:
            return "Flat"
        }
    }
    
    var getCost: String {
        switch self {
        case .addShower:
            return "400"
        case .addAppleTv:
            return "200"
        case .addiMacPro:
            return "13000"
        case .cottage:
            return "4000"
        case .flat:
            return "11000"
        }
    }
}
