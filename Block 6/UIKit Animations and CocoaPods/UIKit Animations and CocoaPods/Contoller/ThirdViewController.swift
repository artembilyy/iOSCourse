//
//  ThirdViewController.swift
//  UIKit Animations and CocoaPods
//
//  Created by Артем Билый on 28.08.2022.
//

import UIKit
import Lottie

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    var animationCat = AnimationView() //added for
    
    func setupUI() {
        animationCat = AnimationView.init(name: "cat")
        animationCat.frame = view.bounds
        animationCat.animationSpeed = 0.9
        animationCat.loopMode = .loop
        
        let startButton: UIButton = {
            let startButton = UIButton.init(type: .system)
            startButton.frame = CGRect(x: view.bounds.maxX - view.bounds.midX / 1.5, y: view.bounds.maxY - view.bounds.midY * 1.5, width: view.bounds.width / 3, height: view.bounds.width / 8)
            startButton.center.x = view.center.x
            startButton.setTitle("Start!", for: .normal)
            startButton.setTitleColor(.systemBlue, for: .normal)
            startButton.titleLabel?.font = UIFont(name: "LabGrotesque-Regular", size: view.bounds.width / 12)
            startButton.addTarget(self, action: #selector(buttonPressed(_ :)), for: .touchUpInside)
            return startButton
        }()
        
        view.addSubview(animationCat)
        view.addSubview(startButton)
        view.backgroundColor = .white
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        self.animationCat.play()
    }
}
