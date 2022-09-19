//
//  ViewController.swift
//  Simple UITableView Programmatically
//
//  Created by Артем Билый on 03.09.2022.
//

import UIKit

class ViewController: UIViewController {

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    let arrayOfMonths = ["January", "Fabruary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray6
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        navigationItem.title = "Task 1"
        tableView.frame = view.bounds
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfMonths.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.font = UIFont(name: "Arial", size: 25)
        cell.textLabel?.text = "\(arrayOfMonths[indexPath.row])"
        cell.backgroundColor = .systemGray6
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = arrayOfMonths[indexPath.row]
        print("Cell \(name) selected")
        let secondViewController = SecondViewController()
        secondViewController.name = arrayOfMonths[indexPath.row]
        secondViewController.indexPath = indexPath.row
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
