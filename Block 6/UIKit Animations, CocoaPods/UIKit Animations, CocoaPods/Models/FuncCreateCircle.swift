//
//  FuncCreateCircle.swift
//  UIKit Animations, CocoaPods
//
//  Created by Артем Билый on 24.08.2022.
//

import Foundation
import UIKit

func addCircleToScreen(view: UIView, centerX: CGFloat, centerY: CGFloat, color: UIColor, hwRatio: Double = 4) -> Circle {
    let defaultSize: CGFloat = view.bounds.height / hwRatio
    let defaultRect = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: defaultSize, height: defaultSize)
    let circle = Circle(frame: defaultRect)
    circle.center = CGPoint(x: centerX, y: centerY)
    circle.backgroundColor = color
    view.addSubview(circle)
    return circle
}



