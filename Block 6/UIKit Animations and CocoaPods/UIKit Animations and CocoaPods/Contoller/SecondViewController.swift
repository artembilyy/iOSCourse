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
        let runButton: UIButton = {
            let runButton = UIButton.init(type: .system)
            runButton.frame = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: view.bounds.width / 3, height: view.bounds.width / 8)
            runButton.center.x = view.center.x
            runButton.setTitle("Run!", for: .normal)
            runButton.setTitleColor(.systemBlue, for: .normal)
            runButton.titleLabel?.font = UIFont(name: "LabGrotesque-Regular", size: view.bounds.width / 12)
            runButton.addTarget(self, action: #selector(buttonPressed(_ :)), for: .touchUpInside)
            return runButton
        }()
        
        circle = addCircleToScreen(view: pathForAnimation, centerX: pathForAnimation.bounds.minX, centerY: pathForAnimation.bounds.minY, color: .systemIndigo, hwRatio: 9)
        
        view.addSubview(runButton)
        view.backgroundColor = .white
        pathForAnimation.backgroundColor = .white
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        UIView.animateKeyframes(withDuration: 8, delay: 0, options: [.autoreverse]) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.maxX, y: self.pathForAnimation.bounds.minY) })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.6, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.maxX, y: self.pathForAnimation.bounds.maxY) })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.minX, y: self.pathForAnimation.bounds.maxY) })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.6, animations: { self.circle.center = CGPoint(x: self.pathForAnimation.bounds.minX, y: self.pathForAnimation.bounds.minY) })
        }
    }
}
