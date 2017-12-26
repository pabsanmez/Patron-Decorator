//
//  FlatViewModel.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

class FlatViewModel: HouseProtocol {
  
  var totalCost: Int {
    return (Int(HouseTypesExtrasEnum.flat.getCost) ?? 0)
  }
  
  
  var description: String {
    return "This is a flat"
  }
  
}

