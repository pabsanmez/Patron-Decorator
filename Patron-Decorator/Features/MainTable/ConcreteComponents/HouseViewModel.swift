//
//  HouseViewModel.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

class HouseViewModel: HouseProtocol {
  
  var cost: Int {
    return 1000
  }
  
  
  var description: String {
    return "This is a house"
  }
  
}
