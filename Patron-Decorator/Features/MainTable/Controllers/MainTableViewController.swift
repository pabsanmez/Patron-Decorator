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
        showAlert()
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: viewModel.getAlertTitle,
                                      message: viewModel.getAlertMessage,
                                      preferredStyle: .alert)
        
        for newAction in viewModel.getActionArray {
            let action = UIAlertAction(title: newAction.getCellTitle, style: .default, handler: {
                [weak self]
                _ in
                self?.viewModel.addNewItem(newItem: newAction)
                self?.refreshTableData()
            })
            alert.addAction(action)
        }
        // Cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    private func setTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        setTableFooter()
        registerCells()
    }
    
    private func refreshTableData() {
        if let footerView = tableView.tableFooterView as? MainTableFooterView  {
            footerView.lblTotalAmountValue.text = viewModel.getTotalCost
        }
        tableView.reloadData()

    }
    
    private func setTableFooter() {
        if let view = UINib(nibName: "MainTableFooterView", bundle: nil).instantiate(withOwner: nil, options: nil).first as? UIView {
            if let footerView = view as? MainTableFooterView {
                footerView.frame = CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50)
                tableView.tableFooterView = footerView
            }
        }
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
        return viewModel.getItemsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableCellsEnum.itemPriceCell.idCell, for: indexPath) as! ItemPriceTableViewCell
        cell.lblItem.text = viewModel.getItemTitle(index: indexPath.row)
        cell.lblPrice.text = viewModel.getItemCost(index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            viewModel.removeItem(index: indexPath.row)
            refreshTableData()
        }
    }
}

