//
//  CustomCurrencyRate.swift
//  Custom UI monobank
//
//  Created by Артем Билый on 01.09.2022.
//

import Foundation
import UIKit

class CustomCurrencyRate: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var currencyMainView: UIView!
    @IBOutlet weak var leftSideView: UIView!
    @IBOutlet weak var leftSideTopLabel: UILabel!
    @IBOutlet weak var leftSideBotLabel: UILabel!
    @IBOutlet weak var rightSideView: UIView!
    @IBOutlet weak var rightSideTopLabel: UILabel!
    @IBOutlet weak var rightSideBotLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("CustomCurrencyRate", owner: self, options: nil)
        contentView.fixInView(self)
        contentView.backgroundColor = #colorLiteral(red: 0.2289608717, green: 0.3322419524, blue: 0.4071648717, alpha: 1)
        centerLabel.text = "More"
        centerLabel.textColor = .white
        centerLabel.backgroundColor = #colorLiteral(red: 0.2289608717, green: 0.3322419524, blue: 0.4071648717, alpha: 1)
        leftSideView.backgroundColor = #colorLiteral(red: 0.3092214167, green: 0.3906121552, blue: 0.453251183, alpha: 1)
        rightSideView.backgroundColor = #colorLiteral(red: 0.3092214167, green: 0.3906121552, blue: 0.453251183, alpha: 1)
        currencyMainView.layer.cornerRadius = 30
        currencyMainView.clipsToBounds = true
        leftSideTopLabel.text = "  Dollar USA"
        leftSideTopLabel.textColor = .white
        leftSideBotLabel.textColor = .white
        leftSideTopLabel.backgroundColor = #colorLiteral(red: 0.3092214167, green: 0.3906121552, blue: 0.453251183, alpha: 1)
        leftSideTopLabel.alpha = 0.8
        leftSideBotLabel.text = " 🇺🇸 36.65/37.50"
        rightSideTopLabel.text = " Euro"
        rightSideTopLabel.alpha = 0.8
        rightSideTopLabel.textColor = .white
        rightSideBotLabel.text = "  🇪🇺 37.35/38.18"
        rightSideBotLabel.textColor = .white
    }
}

extension UIView {
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
}
