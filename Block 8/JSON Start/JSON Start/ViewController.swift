//
//  ViewController.swift
//  JSON Start
//
//  Created by Артем Билый on 12.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = Bundle.main.url(forResource: "Data", withExtension: "json") else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(Company.self, from: data)
        } catch {
            print("error: \(error)")
        }
    }
}



