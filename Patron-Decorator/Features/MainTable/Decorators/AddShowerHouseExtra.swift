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
        return self.houseInstance.description + "shower"
    }
    
    override var totalCost: Int {
        return self.houseInstance.totalCost + (Int(HouseTypesExtrasEnum.addShower.getCost) ?? 0)
    }
}
