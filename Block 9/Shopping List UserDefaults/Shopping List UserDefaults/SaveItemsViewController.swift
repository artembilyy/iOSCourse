//
//  SaveItemsViewController.swift
//  Shopping List UserDefaults
//
//  Created by Артем Билый on 19.09.2022.
//

import UIKit

class SaveItemsViewController: UIViewController {
    
    var tableView = UITableView()
    var addItemButton = UIButton()
    var deleteAllButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }
    
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    
    func setupUI() {
        self.tabBarController?.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.navigationItem.title = "Saved items"
        //buton to navBar".add"
        addItemButton = UIButton.init(type: .system)
        addItemButton.setImage(UIImage(systemName: "plus"), for: .normal)
//        addItemButton.addTarget(self, action: #selector(addItemButtonPressed(_:)), for: .touchUpInside)
        addItemButton.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        addItemButton.layer.cornerRadius = addItemButton.bounds.height / 2
        addItemButton.backgroundColor = .systemGreen
        //button to navBar "trash"
        deleteAllButton = UIButton.init(type: .system)
        deleteAllButton.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        deleteAllButton.setImage(UIImage(systemName: "trash"), for: .normal)
//        deleteAllButton.addTarget(self, action: #selector(deleteAllIteams(_:)), for: .touchUpInside)
        let addButton1 = UIBarButtonItem(customView: addItemButton)
        let deleteButton1 = UIBarButtonItem(customView: deleteAllButton)
        self.tabBarController?.navigationItem.rightBarButtonItems = [addButton1, deleteButton1]
    }
}
