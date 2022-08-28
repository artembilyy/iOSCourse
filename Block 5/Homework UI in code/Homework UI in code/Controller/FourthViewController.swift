//
//  FourthViewController.swift
//  Homework UI in code
//
//  Created by Артем Билый on 18.08.2022.
//

import UIKit
class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupUI()
    }
    
    func setupUI() {
        
        let clearCircle = addCircleToScreen(view: view, centerX: view.bounds.width / 2, centerY: view.bounds.height / 2, color: .white, hwRatio: 3.3)
        
        let blueCircle = addCircleToScreen(view: clearCircle, centerX: clearCircle.bounds.midX - 72, centerY: clearCircle.bounds.midY + 100, color: .systemBlue, hwRatio: 1.1)
        
        let greenCircle = addCircleToScreen(view: clearCircle, centerX: clearCircle.bounds.midX + 72, centerY: clearCircle.bounds.midY + 100, color: .systemGreen, hwRatio: 1.1)
        
        let yellowCircle = addCircleToScreen(view: clearCircle, centerX: clearCircle.bounds.midX + 72, centerY: clearCircle.bounds.midY - 100, color: .systemYellow, hwRatio: 1.1)
        
        let redCircle = addCircleToScreen(view: clearCircle, centerX: clearCircle.bounds.midX - 72, centerY: clearCircle.bounds.midY - 100, color: .systemRed, hwRatio: 1.1)
        
        clearCircle.bringSubviewToFront(yellowCircle)
        clearCircle.bringSubviewToFront(greenCircle)
        clearCircle.bringSubviewToFront(blueCircle)
        clearCircle.clipsToBounds = true
        view.backgroundColor = .white
    }
}
