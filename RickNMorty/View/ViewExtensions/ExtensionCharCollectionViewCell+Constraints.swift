//
//  ExtensionCharCollectionViewCell+Constraints.swift
//  RickNMorty
//
//  Created by Gabriel Palhares on 18/07/19.
//  Copyright © 2019 Gabriel Palhares. All rights reserved.
//

import UIKit

extension CharactersCollectionViewCell {
    
    
    
    func setupImageViewConstraints() {
        
        charImageView.cBuild(make: .fillSuperview)
        
//        self.charImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        self.charImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        self.charImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        self.charImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    func setupBlurViewConstraints() {
        
        blurView.cBuilder{ (make) in
            make.leading.equal(to: charImageView.leadingAnchor)
            make.trailing.equal(to: charImageView.trailingAnchor)
            make.bottom.equal(to: charImageView.bottomAnchor)
        }
//
//        self.blurView.leadingAnchor.constraint(equalTo: self.charImageView.leadingAnchor).isActive = true
//        self.blurView.trailingAnchor.constraint(equalTo: self.charImageView.trailingAnchor).isActive = true
//        self.blurView.bottomAnchor.constraint(equalTo: self.charImageView.bottomAnchor).isActive = true
        self.blurView.heightAnchor.constraint(equalTo: self.charImageView.heightAnchor, multiplier: 0.3).isActive = true
    }
    
    func setupNameLabelConstraints() {
        
        
        nameLabel.cBuilder{ (make) in
            make.leading.equal(to: blurView.leadingAnchor, offsetBy: 12)
            make.trailing.equal(to: blurView.trailingAnchor, offsetBy: -12)
        }
        nameLabel.cBuild(make: .centerYInSuperView)
        
//        self.nameLabel.leadingAnchor.constraint(equalTo: self.blurView.leadingAnchor, constant: 12).isActive = true
//        self.nameLabel.trailingAnchor.constraint(equalTo: self.blurView.trailingAnchor, constant: -12).isActive = true
//        self.nameLabel.centerYAnchor.constraint(equalTo: self.blurView.centerYAnchor).isActive = true
    }
    
}
