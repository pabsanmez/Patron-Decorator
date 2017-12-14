//
//  MainTableViewController.swift
//  Patron-Decorator
//
//  Created by Pablo Sánchez Gómez on 14/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import UIKit

class MainTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let viewModel = MainTableViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()

    }
    
    private func setTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        registerCells()
    }
    
    private func registerCells(){
        MainTableCellsEnum.allCells.forEach {
            cell in
            let nib = UINib(nibName: cell.idCell, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: cell.idCell)
        }
        
    }
}


//Methods TableView Delegate & DataSource.
extension MainTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableCellsEnum.itemPriceCell.idCell, for: indexPath) as! ItemPriceTableViewCell
        cell.lblItem.text = "Ducha"
        cell.lblPrice.text = "+100"
        return cell
    }
    
}

