//
//  DCCell.swift
//  CompositionalLayout
//
//  Created by Артем Билый on 10.09.2022.
//

import Foundation
import UIKit

class DCCell: UICollectionViewCell {
    static var identifier: String = "Cell1"
    
    private let dcImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    func setupView() {
        addSubview(dcImageView)
        setupConstraints()
    }
    
    func configureCell(imageName: String) {
        dcImageView.image = UIImage(named: imageName)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            dcImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            dcImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            dcImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
            dcImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
