//
//  FuncCreateCircle.swift
//  Homework UI in code
//
//  Created by Артем Билый on 20.08.2022.
//

import UIKit

func addCircleToScreen(view: UIView, centerX: CGFloat, centerY: CGFloat, color: UIColor, hwRatio: Double = 3.8) -> Circle {
    let defaultSize: CGFloat = view.bounds.height / hwRatio
    let defaultRect = CGRect(x: 0, y: 0, width: defaultSize, height: defaultSize)
    let circle = Circle(frame: defaultRect)
    circle.backgroundColor = color
    view.addSubview(circle)
    circle.center = CGPoint(x: centerX, y: centerY)
    return circle
}







