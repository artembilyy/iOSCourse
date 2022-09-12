//
//  FirstViewController.swift
//  UIKit Animations and CocoaPods
//
//  Created by Артем Билый on 25.08.2022.
//

import Foundation
import UIKit

//UIKit Animations

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBOutlet weak var pathForAnimation: UIView!
    
    var circle = UIView()
    
    func setupUI() {
        let bounceButton: UIButton = {
            let bounceButton = UIButton.init(type: .system)
            bounceButton.frame = CGRect(x: view.bounds.midX,
                                        y: view.bounds.midY - (view.bounds.midY / 1.8),
                                        width: view.bounds.width / 3,
                                        height: view.bounds.width / 8)
            bounceButton.center.x = view.center.x
            bounceButton.setTitle("Bounce!", for: .normal)
            bounceButton.setTitleColor(.systemBlue, for: .normal)
            bounceButton.titleLabel?.font = UIFont(name: "LabGrotesque-Regular",
                                                   size: view.bounds.width / 12)
            bounceButton.addTarget(self, action: #selector(buttonPressed(_ :)), for: .touchUpInside)
            return bounceButton
        }()
        
        circle = addCircleToScreen(view: view,
                                   centerX: view.bounds.midX,
                                   centerY: view.bounds.maxY - (view.bounds.width / 3.3),
                                   color: .systemGreen,
                                   hwRatio: 7)
        
        let imageView = UIImageView()
        imageView.frame = CGRect(x: circle.bounds.minX, y: circle.bounds.minX, width: circle.bounds.width, height: circle.bounds.height)
        imageView.image = UIImage(named: "ball")
        
        view.backgroundColor = .white
        view.addSubview(bounceButton)
        circle.addSubview(imageView)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1,
                       delay: 0,
                       usingSpringWithDamping: 4,
                       initialSpringVelocity: 5,
                       options: [.curveEaseInOut, .autoreverse, .repeat], completion: { item in
            
            
        }) {
            self.circle.rotate()
            self.circle.center = self.view.center
        }
    }
}
