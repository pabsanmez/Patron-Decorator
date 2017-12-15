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
        configureUI()
        setTableView()
      
    }
  
    func configureUI() {
        self.title = "Decorator Pattern"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
    }
  
    @objc func addTapped() {
    }
    
    private func setTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        if let view = UINib(nibName: "MainTableFooterView", bundle: nil).instantiate(withOwner: nil, options: nil).first as? UIView {
          if let view = view as? MainTableFooterView {
            view.frame = CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50)
            tableView.tableFooterView = view
          }
        }
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
  
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    if (editingStyle == UITableViewCellEditingStyle.delete) {
      //Eliminar celda
    }
  }
    
}

