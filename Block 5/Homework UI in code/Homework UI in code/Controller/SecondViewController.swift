//
//  SecondViewController.swift
//  Homework UI in code
//
//  Created by Артем Билый on 18.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let yellowCircle = addCircleToScreen(view: view,
                                            centerX: view.center.x,
                                            centerY: view.center.y,
                                            color: .systemYellow)
        
        let redCircle = addCircleToScreen(view: view,
                                          centerX: view.center.x,
                                          centerY: view.frame.height / 4.8 + 20,
                                          color: .systemRed)

        let greenCircle = addCircleToScreen(view: view,
                                            centerX: view.center.x,
                                            centerY: view.frame.height / 1.3,
                                            color: .systemGreen)
    }
}







