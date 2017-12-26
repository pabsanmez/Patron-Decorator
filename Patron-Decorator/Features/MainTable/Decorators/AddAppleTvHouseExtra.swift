//
//  AddAppleTvHouseExtra.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

final class AddAppleTvHouseExtra: HouseExtrasDecorator {
    
    override var description: String {
        return self.description + "apple TV"
    }
    
    override var totalCost: Int {
        return self.totalCost + 200
    }
    
    required init(houseType: HouseProtocol) {
        super.init(houseType: houseType)
    }
}

