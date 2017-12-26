//
//  HouseExtrasDecorator.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

class HouseExtrasDecorator: HouseProtocol {
    
    var description: String {
        return houseType.description + " with the following extras:"
    }
    
    var totalCost: Int {
        return houseType.totalCost
    }
    
    let houseType: HouseProtocol
    
    required init (houseType: HouseProtocol) {
        self.houseType = houseType
    }
}
