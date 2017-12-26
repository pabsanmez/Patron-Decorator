//
//  AddIMacProHouseExtra.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

final class AddiMacProHouseExtra: HouseExtrasDecorator {
    
    override var description: String {
        return self.description + "iMac"
    }
    
    override var totalCost: Int {
        return self.totalCost + 13000
    }
    
    required init(houseType: HouseProtocol) {
        super.init(houseType: houseType)
    }
}
