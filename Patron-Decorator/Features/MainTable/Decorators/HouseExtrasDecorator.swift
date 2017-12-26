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
        return houseInstance.description + " with the following extras:"
    }
    
    var totalCost: Int {
        return houseInstance.totalCost
    }
    
    let houseInstance: HouseProtocol
    
    required init (houseType: HouseProtocol) {
        self.houseInstance = houseType
    }
}
