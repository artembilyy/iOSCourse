//
//  HeaderSupplementaryView.swift
//  CompositionalLayout
//
//  Created by Артем Билый on 11.09.2022.
//

import Foundation
import UIKit


class HeaderSupplementaryView: UICollectionReusableView {
    
    static let indetifier = "Header"
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Header"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .systemIndigo
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(headerLabel)

    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLabel(name: String) {
        headerLabel.text = name
    }
    
    override func layoutSubviews() {
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
        headerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ])
    }
}
