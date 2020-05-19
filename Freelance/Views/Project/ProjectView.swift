//
//  ProjectView.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/17/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class ProjectView: UIView {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .clear
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.isUserInteractionEnabled = true
        return view
    }()
    
    let backButton: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage.setImage(withIcon: UIImage.Icon.backButton)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    let ovalButton: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage.setImage(withIcon: UIImage.Icon.ovals)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setSubviewForAutoLayout(scrollView)
        scrollView.setSubviewForAutoLayout(containerView)
        containerView.setSubviewsForAutoLayout([backButton])
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        // MARK: ScrollView
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
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
            containerView.heightAnchor.constraint(equalToConstant: 1000)
        ])
        
        // MARK: BackButton
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            backButton.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 8),
            backButton.heightAnchor.constraint(equalToConstant: 14)
        ])
    }
}
