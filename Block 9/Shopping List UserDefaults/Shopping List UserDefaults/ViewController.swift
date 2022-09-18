//
//  ViewController.swift
//  Shopping List UserDefaults
//
//  Created by Артем Билый on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
    var addItemButton = UIButton()
    var deleteAllButton = UIButton()

    var items = UserDefaults.standard.stringArray(forKey: "items") ?? [] {
        didSet {
            UserDefaults.standard.set(items, forKey: "items")
            UserDefaults.standard.synchronize()
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func setupUI() {
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Shopping List"
        //buton to navBar".add"
        addItemButton = UIButton.init(type: .system)
        addItemButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addItemButton.addTarget(self, action: #selector(addItemButtonPressed(_:)), for: .touchUpInside)
        addItemButton.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        addItemButton.layer.cornerRadius = addItemButton.bounds.height / 2
        addItemButton.backgroundColor = .systemGreen
        //button to navBar "trash"
        deleteAllButton = UIButton.init(type: .system)
        deleteAllButton.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        deleteAllButton.setImage(UIImage(systemName: "trash"), for: .normal)
        deleteAllButton.addTarget(self, action: #selector(deleteAllIteams(_:)), for: .touchUpInside)
        
        navigationItem.title = "Shopping List"
        view.addSubview(tableView)

        let addButton = UIBarButtonItem(customView: addItemButton)
        let deleteButton = UIBarButtonItem(customView: deleteAllButton)
        navigationItem.rightBarButtonItems = [addButton, deleteButton]
    }
        
    @objc func addItemButtonPressed(_ sender: UIButton) {
        
        let alertMessage = UIAlertController(title: "New item", message: "Enter new shopping list item!", preferredStyle: .alert)
        alertMessage.addTextField { textField in
            textField.placeholder = "Enter item..."
        }
        
        let pushButton = UIAlertAction(title: "Done", style: .default) { [self] _ in
            let newItem = alertMessage.textFields?.first?.text
            if newItem != "" {
                items.append(newItem ?? "")
            }
        }

        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertMessage.addAction(cancelButton)
        alertMessage.addAction(pushButton)
        self.present(alertMessage, animated: true, completion: nil)
    }
    
    @objc func deleteAllIteams(_ sender: UIButton) {
        
        let alertMessage = UIAlertController(title: "Delete all items", message: nil, preferredStyle: .alert)
        self.present(alertMessage, animated: true, completion: nil)
        let delete = UIAlertAction(title: "Delete", style: .default) { [self] _ in
            items.removeAll()
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertMessage.addAction(delete)
        alertMessage.addAction(cancelButton)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
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
