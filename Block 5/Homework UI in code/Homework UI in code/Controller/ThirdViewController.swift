//
//  ThirdViewController.swift
//  Homework UI in code
//
//  Created by Артем Билый on 18.08.2022.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        
        let yellowCircle = addCircleToScreen(view: view,
                                            centerX: view.center.x,
                                            centerY: view.center.y,
                                            color: .systemYellow)
        
        let redCircle = addCircleToScreen(view: view,
                                          centerX: view.center.x + 70,
                                          centerY: view.frame.height / 4.3 + 100,
                                          color: .systemRed)

        let greenCircle = addCircleToScreen(view: view,
                                            centerX: view.center.x - 70,
                                            centerY: view.frame.height / 1.3 - 100,
                                            color: .systemGreen)
        yellowCircle.alpha = 0.8
        view.bringSubviewToFront(yellowCircle)
        view.backgroundColor = .white
    }
}


