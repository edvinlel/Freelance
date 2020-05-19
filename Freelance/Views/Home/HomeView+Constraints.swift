//
//  HomeView+Constraints.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/15/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

extension HomeView {
    
    
    
    
    /// Constraints for the views in HomeView.swift
    func setConstraints() {
        // MARK: ScrollView
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            scrollView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            scrollView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
        
        // MARK: ContainerView
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            containerView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 0),
            containerView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 0),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1),
            containerView.heightAnchor.constraint(equalToConstant: 1100)
        ])
        
        
        // MARK: HamburgerMenuButton
        NSLayoutConstraint.activate([
            hamburgerMenuButton.topAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.topAnchor, constant: 30),
            hamburgerMenuButton.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: leadingConstant),
            hamburgerMenuButton.widthAnchor.constraint(equalToConstant: 25),
            hamburgerMenuButton.heightAnchor.constraint(equalToConstant: 16)
        ])
        
        
        // MARK: HelloLabel
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: hamburgerMenuButton.bottomAnchor, constant: 40),
            helloLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: leadingConstant)
        ])
        
        
        // MARK: CollectionView
        NSLayoutConstraint.activate([
            projectCollectionView.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 20),
            projectCollectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            projectCollectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0),
            projectCollectionView.heightAnchor.constraint(equalToConstant: 280)
        ])
        
        
        // MARK: TaskContainverView
        NSLayoutConstraint.activate([
            taskContainerView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0),
            taskContainerView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0),
            taskContainerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0),
            taskContainerView.heightAnchor.constraint(equalToConstant: 600),
        ])
        
        
        // MARK: TaskView
        NSLayoutConstraint.activate([
            newTaskView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            newTaskView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            newTaskView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            newTaskView.heightAnchor.constraint(equalToConstant: 95)
        ])
    }
}
