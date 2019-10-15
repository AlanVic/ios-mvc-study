//
//  CharactersViewControllerConstraintsExtensions.swift
//  RickNMorty
//
//  Created by Gabriel Palhares on 26/08/19.
//  Copyright © 2019 Gabriel Palhares. All rights reserved.
//

import UIKit

extension CharactersViewController {
    
    func setupCollectionViewConstraints() {
        self.view.addSubview(self.charCollectionView)
        self.view.addSubview(self.loadingIndicator)
        
        self.loadingIndicator.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            charCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor),
            charCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            charCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            charCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            loadingIndicator.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            loadingIndicator.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}

