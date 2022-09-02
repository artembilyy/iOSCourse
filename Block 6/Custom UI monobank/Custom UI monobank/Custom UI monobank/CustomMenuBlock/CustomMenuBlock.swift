//
//  CustomMenuBlock.swift
//  Custom UI monobank
//
//  Created by Артем Билый on 01.09.2022.
//

import Foundation
import UIKit

protocol CustomMenuBlockDelegate: NSObject {
    func menuElementPressed(typeBlock: typeBlock)
}

enum typeBlock: String {
    case plan = "plan"
    case archive = "archive"
    case payments = "payments"
}

class CustomMenuBlock: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var labelBottom: UILabel!
    @IBOutlet weak var pictureLeft: UIImageView!
    @IBOutlet weak var pictureView: UIView!
    
    var delegate: CustomMenuBlockDelegate?
    var typeBlock: typeBlock?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("CustomMenuBlock", owner: self, options: nil)
        contentView.fixInView(self)
        pictureView.layer.cornerRadius = pictureView.frame.size.width / 2
    }
    
    @IBAction func menuButtonPressed(_ sender: Any) {
        delegate?.menuElementPressed(typeBlock: self.typeBlock!)
    }
    
    func configure(with text: String, image: UIImage, color: UIColor, typeBlock: typeBlock) {
        pictureLeft.image = image
        labelBottom.text = text
        self.pictureView.backgroundColor = color
        self.typeBlock = typeBlock
    }
}

