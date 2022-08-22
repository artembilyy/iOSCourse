//
//  FirstViewController.swift
//  Homework UI in code
//
//  Created by Артем Билый on 18.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let greenCircleCenter = addCircleToScreen(view: view,
                                                  centerX: view.center.x,
                                                  centerY: view.center.y,
                                                  color: .systemGreen)
    }
}





