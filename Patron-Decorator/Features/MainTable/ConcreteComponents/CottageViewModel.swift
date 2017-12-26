//
//  CottageViewModel.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 26/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

class CottageViewModel: HouseProtocol {
  
  var cost: Int {
    return 4000
  }
  
  
  var description: String {
    return "This is a cottage"
  }
  
}

