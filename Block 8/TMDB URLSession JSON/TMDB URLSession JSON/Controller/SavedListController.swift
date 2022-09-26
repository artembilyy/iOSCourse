//
//  SavedListController.swift
//  TMDB URLSession JSON
//
//  Created by Артем Билый on 25.09.2022.
//

import UIKit
import RealmSwift

class SavedListController: UIViewController {
    
    var tableView = UITableView()
    var addItemButton = UIButton()
    var deleteAllButton = UIButton()
    
    private let realm = try! Realm()
    
    var savedMovie: [MovieRealm] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        setupUI()
        tableView.reloadData()
    }

    
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let data = getMovieRealm()
        savedMovie = data
        tableView.reloadData()
        
    }
    
    private func getMovieRealm() -> [MovieRealm] {
        let results = realm.objects(MovieRealm.self)
        return Array(results)
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
            try? realm.write {
                realm.deleteAll()
            }
            savedMovie.removeAll()
            tableView.reloadData()
    
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel)
    
        alertMessage.addAction(delete)
        alertMessage.addAction(cancelButton)
    }
}

extension SavedListController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        savedMovie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = savedMovie[indexPath.row].title ?? savedMovie[indexPath.row].name ?? savedMovie[indexPath.row].originalTitle ?? ""
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
            savedMovie.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        }
    }
}
