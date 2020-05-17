//
//  NewTaskView.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/15/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class NewTaskView: UIView {
    
    // TODO: Need a button for attatchment, contact, and Enter task name
    
    let dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.FreelanceColor.paragraphGray
        view.alpha = 0.3
        return view
    }()
    
    let attatchmentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.setImage(withIcon: UIImage.Icon.greenAttachment)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let contactImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.setImage(withIcon: UIImage.Icon.greenContact)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let enterTaskButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter task name", for: .normal)
        button.setTitleColor(UIColor.FreelanceColor.taskGreen, for: .normal)
        button.titleLabel?.font = UIFont.avenirMedium(ofSize: 18)
        return button
    }()
    
    lazy var stackView: UIStackView = { [unowned self] in
        let sv = UIStackView(arrangedSubviews:[self.attatchmentImageView, self.contactImageView])
        sv.axis = .horizontal
        sv.spacing = 20
        sv.distribution = .fillEqually
        return sv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.FreelanceColor.background
        
        setSubviewsForAutoLayout([dividerView, stackView, enterTaskButton])
        constraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func constraints() {
        // DividerView
        NSLayoutConstraint.activate([
            dividerView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            dividerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            dividerView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
            dividerView.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        // Contact and Attatchment ImageView's
        NSLayoutConstraint.activate([
            attatchmentImageView.widthAnchor.constraint(equalToConstant: 25),
            attatchmentImageView.heightAnchor.constraint(equalToConstant: 25),
            contactImageView.widthAnchor.constraint(equalToConstant: 25),
            contactImageView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        // StackView
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 20),
            stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
        ])
        
        // EnterTaskButton
        NSLayoutConstraint.activate([
            enterTaskButton.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            enterTaskButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
