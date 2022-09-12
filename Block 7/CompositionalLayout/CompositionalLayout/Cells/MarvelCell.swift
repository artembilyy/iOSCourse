//
//  MarvelCell.swift
//  CompositionalLayout
//
//  Created by Артем Билый on 10.09.2022.
//

import Foundation
import UIKit

class MarvelCell: UICollectionViewCell {
    
    static var identifier: String = "Cell"
    
    private let marvelImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    func setupView() {
        addSubview(marvelImageView)
        setupConstraints()
    }
    
    func configureCell(imageName: String) {
        marvelImageView.image = UIImage(named: imageName)
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
            marvelImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            marvelImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            marvelImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
            marvelImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
