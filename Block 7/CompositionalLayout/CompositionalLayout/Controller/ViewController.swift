//
//  ViewController.swift
//  CompositionalLayout
//
//  Created by Артем Билый on 09.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(MarvelCell.self, forCellWithReuseIdentifier: MarvelCell.identifier)
        collectionView.register(DCCell.self, forCellWithReuseIdentifier: DCCell.identifier)
        collectionView.register(HeaderSupplementaryView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSupplementaryView.indetifier)
        setupUI()
    }
    func setupUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView?.frame = view.bounds
        collectionView?.collectionViewLayout = createLayout()
        
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(
            top: 16,
            leading: 8,
            bottom: 16,
            trailing: 8)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0)
        
        
        //MARK: - я добавил это
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                heightDimension: .estimated(50.0))
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,
                                                                 elementKind: UICollectionView.elementKindSectionHeader,
                                                                 alignment: .top)
        let section = NSCollectionLayoutSection(group: group)
        
        //MARK: - и это
        section.boundarySupplementaryItems = [header]
        
        
        
        
        section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    private let sections = Data.shared.pageData
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count //number of sections
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].count //items in section
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderSupplementaryView.indetifier, for: indexPath) as! HeaderSupplementaryView
            header.configureLabel(name: sections[indexPath.section].title)
            header.backgroundColor = .black
            return header
        default:
            return UICollectionReusableView()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch sections[indexPath.section] {
            
        case .marvel(let superhero):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MarvelCell.identifier, for: indexPath) as? MarvelCell else {
                return UICollectionViewCell()
            }
            cell.configureCell(imageName: superhero[indexPath.row].image)
            return cell
            
        case .dc(let dchero):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DCCell.identifier, for: indexPath) as? DCCell else {
                return UICollectionViewCell()
            }
            cell.configureCell(imageName: dchero[indexPath.row].image)
            return cell
        }
    }
}
