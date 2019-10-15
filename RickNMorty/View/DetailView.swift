//
//  DetailView.swift
//  RickNMorty
//
//  Created by Gabriel Palhares on 11/09/19.
//  Copyright © 2019 Gabriel Palhares. All rights reserved.
//

import UIKit

class DetailView: BaseView {
    
    lazy var ivPhoto: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .blue
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 8
        return image
    }()
    
    lazy var lbName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Nome:"
        label.font = label.font.withSize(24)
        return label
    }()
    
    lazy var lbStatus: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Status: "
        label.font = label.font.withSize(18)
        return label
    }()
    
    lazy var lbSpecies: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Species:"
        label.font = label.font.withSize(18)
        return label
    }()
    
    lazy var lbGender: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Gender: "
        label.font = label.font.withSize(18)
        return label
    }()
    
    lazy var characterLbName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = label.font.withSize(18)
        return label
    }()
    
    lazy var characterLbStatus: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = label.font.withSize(18)
        return label
    }()
    
    lazy var characterLbSpecies: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = label.font.withSize(18)
        return label
    }()
    
    lazy var characterLbGender: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = label.font.withSize(18)
        return label
    }()
    
    override func initialize() {
        self.backgroundColor = .white
    }
    
    func updateUI(character: Character) {
        self.ivPhoto.imageFrom(url: character.image)
        self.characterLbName.text = character.name
        self.characterLbStatus.text = character.status
        self.characterLbSpecies.text = character.species
        self.characterLbGender.text = character.gender
    }
    
    override func addViews() {
        addSubview(ivPhoto)
        addSubview(lbName)
        addSubview(lbStatus)
        addSubview(lbSpecies)
        addSubview(lbGender)
        
        addSubviews([characterLbName, characterLbStatus, characterLbSpecies, characterLbGender])
    }
    
    override func autoLayout() {
        NSLayoutConstraint.activate([
            ivPhoto.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
//            ivPhoto.centerXAnchor.constraint(equalTo: centerXAnchor),
            ivPhoto.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            ivPhoto.heightAnchor.constraint(equalToConstant: 200),
            ivPhoto.widthAnchor.constraint(equalToConstant: 200),
        ])
        
        NSLayoutConstraint.activate([
            lbName.topAnchor.constraint(equalTo: ivPhoto.bottomAnchor, constant: 12),
            lbName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            lbName.heightAnchor.constraint(equalToConstant: 20),
        ])

        NSLayoutConstraint.activate([
            lbStatus.topAnchor.constraint(equalTo: lbName.bottomAnchor, constant: 4),
            lbStatus.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            lbStatus.heightAnchor.constraint(equalToConstant: 20),
        ])

        NSLayoutConstraint.activate([
            lbSpecies.topAnchor.constraint(equalTo: lbStatus.bottomAnchor, constant: 4),
            lbSpecies.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            lbSpecies.heightAnchor.constraint(equalToConstant: 20),
        ])

        NSLayoutConstraint.activate([
            lbGender.topAnchor.constraint(equalTo: lbSpecies.bottomAnchor, constant: 4),
            lbGender.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            lbGender.heightAnchor.constraint(equalToConstant: 20),
        ])
        
        // characterLbName constraints
        NSLayoutConstraint.activate([
            characterLbName.topAnchor.constraint(equalTo: lbName.topAnchor),
            characterLbName.leadingAnchor.constraint(equalTo: lbName.trailingAnchor, constant: 16),
            
            characterLbName.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -16)
        ])
        
        // characterLbStatus constraints
        NSLayoutConstraint.activate([
            characterLbStatus.topAnchor.constraint(equalTo: lbStatus.topAnchor),
            characterLbStatus.leadingAnchor.constraint(equalTo: lbStatus.trailingAnchor, constant: 16),
            characterLbStatus.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -16)
        ])

        // characterLbSpecies constraints
        NSLayoutConstraint.activate([
            characterLbSpecies.topAnchor.constraint(equalTo: lbSpecies.topAnchor),
            characterLbSpecies.leadingAnchor.constraint(equalTo: lbSpecies.trailingAnchor, constant: 16),
            characterLbSpecies.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -16)
        ])

        // characterLbGender constraints
        NSLayoutConstraint.activate([
            characterLbGender.topAnchor.constraint(equalTo: lbGender.topAnchor),
            characterLbGender.leadingAnchor.constraint(equalTo: lbGender.trailingAnchor, constant: 16),
            characterLbGender.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -16)
        ])
    }
}

