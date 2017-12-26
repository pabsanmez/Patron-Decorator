//
//  MainTableViewModel.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 14/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation

final class MainTableViewModel {
    
    fileprivate var items = [HouseTypesExtrasEnum]()
    fileprivate var itemCompleted: HouseProtocol?
    
    var getItems: [HouseTypesExtrasEnum] {
        return items
    }
    
    var getItemsCount: Int {
        return items.count
    }
    
    func addNewItem(newItem: HouseTypesExtrasEnum) {
        switch newItem {
        case .cottage:
            items = [.cottage]
            itemCompleted = CottageViewModel()
        case .flat:
            items = [.flat]
            itemCompleted = FlatViewModel()
        case .addShower:
            guard let itemCompleted = itemCompleted else { return }
            items.append(.addShower)
            self.itemCompleted = AddShowerHouseExtra(houseType: itemCompleted)
        case .addAppleTv:
            guard let itemCompleted = itemCompleted else { return }
            items.append(.addAppleTv)
            self.itemCompleted = AddAppleTvHouseExtra(houseType: itemCompleted)
        case .addiMacPro:
            guard let itemCompleted = itemCompleted else { return }
            items.append(.addiMacPro)
            self.itemCompleted = AddiMacProHouseExtra(houseType: itemCompleted)
        }
    }
    
    func removeItem(index: Int) {
        if index == 0 {
            items.removeAll()
        } else {
            items.remove(at: index)
        }
    }
    
    var getAlertTitle: String {
        if items.count == 0 {
            return "Your house"
        } else {
            return "Extras"
        }
    }
    
    var getAlertMessage: String {
        if items.count == 0 {
            return "Where do you prefer to life?"
        } else {
            return "Give more glamour to your new home!"
        }
    }
    
    func getActionTitle(index: Int) -> String {
        if items.count == 0 {
            return HouseTypesExtrasEnum.allHouseTypes[index].getCellTitle
        } else {
            return HouseTypesExtrasEnum.allExtras[index].getCellTitle
        }
    }
    
    var getActionArray: [HouseTypesExtrasEnum] {
        if items.count == 0 {
            return HouseTypesExtrasEnum.allHouseTypes
        } else {
            return HouseTypesExtrasEnum.allExtras
        }
    }
    
    func getItemCost(index: Int) -> String {
        return items[index].getCost
    }
    
    func getItemTitle(index: Int) -> String {
        return items[index].getCellTitle
    }
    
    var getTotalCost: String {
        return String(describing: itemCompleted?.totalCost)
    }
    
}
