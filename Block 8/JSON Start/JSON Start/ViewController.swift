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
            
            print("Company description: \(jsonData.companyDescription)")
            print("First model: \(jsonData.listOfData[0].modelNumber)")
            print("First model -> last country: \(jsonData.listOfData[0].countries.last ?? "")")
            print("Last model price and 1 counry name: \(jsonData.listOfData.last?.price.regions.first?.name ?? "")")
            print("Last model price nad last coutry last: \(jsonData.listOfData.last?.price.regions.last?.price ?? 0)")
        } catch {
            print("error: \(error)")
        }
    }
}
