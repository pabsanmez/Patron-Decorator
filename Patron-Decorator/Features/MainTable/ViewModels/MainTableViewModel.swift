//
//  MainTableViewModel.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 14/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

final class MainTableViewModel {
    
    fileprivate var items = [HouseProtocol]()
    
    var getItems: [HouseProtocol] {
        return items
    }
    
    var getItemsCount: Int {
        return items.count
    }
    
    func addNewItem(newItem: HouseProtocol) {
        items.append(newItem)
    }
    
    func removeItem(index: Int) {
        items.remove(at: index)
    }
    
}
