//
//  Circle.swift
//  UIKit Animations and CocoaPods
//
//  Created by Артем Билый on 25.08.2022.
//

import Foundation
import UIKit

class Circle: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = self.frame.height / 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
