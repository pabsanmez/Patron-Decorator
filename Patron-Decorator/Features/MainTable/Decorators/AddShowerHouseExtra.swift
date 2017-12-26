//
//  AddShowerHouseExtra.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

final class AddShowerHouseExtra: HouseExtrasDecorator {
    
    override var description: String {
        return self.description + "shower"
    }
    
    override var cost: Int {
        return self.cost + 400
    }
    
    required init(houseType: HouseProtocol) {
        super.init(houseType: houseType)
    }
}
