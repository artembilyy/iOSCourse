//
//  ViewController.swift
//  UIKit Animations, CocoaPods
//
//  Created by Артем Билый on 24.08.2022.
//

import UIKit


//UIKit Animations

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    var circle = UIView()
    
    func setupUI() {
        let someButton: UIButton = {
            let someButton = UIButton(frame: CGRect(x: view.bounds.midX - 100, y: view.bounds.midY - 200, width: 200, height: 100))
            someButton.setTitle("Bounce!", for: .normal)
            someButton.setTitleColor(.systemBlue, for: .normal)
            someButton.titleLabel?.font = UIFont(name: "LabGrotesque-Regular", size: 35)
            someButton.addTarget(self, action: #selector(topButtonPressed(_ :)), for: .touchUpInside)
            return someButton
        }()
        view.addSubview(someButton)
        circle = addCircleToScreen(view: view, centerX: view.bounds.midX, centerY: view.bounds.maxY - 60, color: .systemGreen, hwRatio: 7)
    }
    @objc func topButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 4, initialSpringVelocity: 5, options: [.autoreverse, .repeat]) {
            self.circle.center = self.view.center
        }
    }
}
