//
//  SecondViewController.swift
//  Simple UITableView Programmatically
//
//  Created by Артем Билый on 03.09.2022.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var name: String?
    var indexPath: Int?
    var labelOfMonths = UILabel()
    var labelOfIndexMonths = UILabel()
    var centralButton = UIButton()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemGray6
        view.addSubview(labelOfMonths)
        view.addSubview(labelOfIndexMonths)
        view.addSubview(centralButton)
        navigationItem.title = "Task 2"
    }

    override func viewDidLayoutSubviews() {
        setupUI()
    }
    
    func setupUI() {
        
        labelOfMonths.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        labelOfMonths.text = "Month \n\(String(describing: name!))"
        labelOfMonths.numberOfLines = 2
        labelOfMonths.textAlignment = .center
        labelOfMonths.font = UIFont(name: "Arial", size: 30)
        labelOfMonths.backgroundColor = .systemYellow
        labelOfMonths.textColor = .systemBlue
        labelOfMonths.center = CGPoint(x: view.center.x, y: view.bounds.height / 1.4)
        labelOfMonths.alpha = 0
        
        labelOfIndexMonths.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        labelOfIndexMonths.numberOfLines = 2
        labelOfIndexMonths.text = "Number \n\(String(describing: indexPath! + 1))"
        labelOfIndexMonths.textAlignment = .center
        labelOfIndexMonths.font = UIFont(name: "Arial", size: 30)
        labelOfIndexMonths.backgroundColor = .systemBlue
        labelOfIndexMonths.textColor = .systemYellow
        labelOfIndexMonths.center = CGPoint(x: view.center.x, y: view.bounds.height / 3.4)
        labelOfIndexMonths.alpha = 0
        
        centralButton.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        centralButton.setTitle("Press it", for: .normal)
        centralButton.backgroundColor = .systemGreen
        centralButton.titleLabel?.textAlignment = .center
        centralButton.titleLabel?.font = UIFont(name: "Arial", size: 30)
        centralButton.center = CGPoint(x: view.center.x, y: view.center.y)
        centralButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        labelOfMonths.alpha = 1
        labelOfIndexMonths.alpha = 1
    }
}

