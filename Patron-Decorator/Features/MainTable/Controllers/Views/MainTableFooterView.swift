//
//  MainTableFooterView.swift
//  Patron-Decorator
//
//  Created by Pablo Sanchez Gomez on 15/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import UIKit

class MainTableFooterView: UIView {

  @IBOutlet weak var lbltotalAmountTitle: UILabel!
  @IBOutlet weak var lblTotalAmountValue: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    lbltotalAmountTitle.text = "Total cost:"
    lblTotalAmountValue.text = "+500"
  }

}
