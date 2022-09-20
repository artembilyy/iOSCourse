//
//  SavedListController.swift
//  Shopping List UserDefaults
//
//  Created by Артем Билый on 20.09.2022.
//

import UIKit

class SavedListController: UIViewController {
    
    var tableView = UITableView()
    var addItemButton = UIButton()
    var deleteAllButton = UIButton()
    
    var items = [String]() {
        didSet {
            UserDefaults.standard.set(items, forKey: "savedItems")
            UserDefaults.standard.synchronize()
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        items = UserDefaults.standard.stringArray(forKey: "savedItems") ?? []
        
    }
    
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }
 
    func setupUI() {
        title = "Saved List"
        navigationController?.navigationBar.prefersLargeTitles = true
        //button to navBar "trash"
        deleteAllButton = UIButton.init(type: .system)
        deleteAllButton.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        deleteAllButton.setTitle("Remove all", for: .normal)
        deleteAllButton.setImage(UIImage(systemName: "trash"), for: .normal)
        deleteAllButton.addTarget(self, action: #selector(deleteAllIteams(_:)), for: .touchUpInside)
        let deleteButton1 = UIBarButtonItem(customView: deleteAllButton)
        navigationItem.rightBarButtonItems = [deleteButton1]
    }
    
    @objc func deleteAllIteams(_ sender: UIButton) {
        let alertMessage = UIAlertController(title: "Remove Saved List?", message: nil, preferredStyle: .alert)
        self.present(alertMessage, animated: true, completion: nil)
        let delete = UIAlertAction(title: "Delete", style: .default) { [self] _ in
            items.removeAll()
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
    
        alertMessage.addAction(delete)
        alertMessage.addAction(cancelButton)
    }
}

extension SavedListController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textAlignment = .left
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }
    }
}
