//
//  SecondViewController.swift
//  UIKit Animations and CocoaPods
//
//  Created by Артем Билый on 25.08.2022.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    var circle = Circle()
    
    @IBOutlet weak var pathForAnimation: UIView! //added in storyboard
    
    func setupUI() {
        let bounceButton: UIButton = {
            let bounceButton = UIButton.init(type: .system)
            bounceButton.frame = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: view.bounds.width / 3, height: view.bounds.width / 8)
            bounceButton.center.x = view.center.x
            bounceButton.setTitle("Run!", for: .normal)
            bounceButton.setTitleColor(.systemBlue, for: .normal)
            bounceButton.titleLabel?.font = UIFont(name: "LabGrotesque-Regular", size: view.bounds.width / 12)
            bounceButton.addTarget(self, action: #selector(topButtonPressed(_ :)), for: .touchUpInside)
            return bounceButton
        }()
        
        circle = addCircleToScreen(view: pathForAnimation, centerX: pathForAnimation.bounds.minX, centerY: pathForAnimation.bounds.minY, color: .systemIndigo, hwRatio: 9)
        
        view.addSubview(bounceButton)
        view.backgroundColor = .white
        pathForAnimation.backgroundColor = .white
        
    }
    
    @objc func topButtonPressed(_ sender: UIButton) {
        
        UIView.animateKeyframes(withDuration: 8, delay: 0, options: [.autoreverse]) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.maxX, y: self.pathForAnimation.bounds.minY) })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.4, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.maxX, y: self.pathForAnimation.bounds.maxY) })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.minX, y: self.pathForAnimation.bounds.maxY) })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.4, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.minX, y: self.pathForAnimation.bounds.minY) })
        }
    }
}



