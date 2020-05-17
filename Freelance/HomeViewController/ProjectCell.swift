//
//  ProjectCell.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/16/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class ProjectCell: UICollectionViewCell {
    
    static let identifier = "ProjectCell"
    
    private let labelFontSize: CGFloat = 12

    // MARK: Tasks Views
    lazy var tasksRemaining: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.font = UIFont.avenirBold(ofSize: 14)
        label.textColor = UIColor.FreelanceColor.lightBlue
        return label
    }()
    
    lazy var numberOfTasksLabel: UILabel = {
        let label = UILabel()
        label.text = "Tasks"
        label.font = UIFont.avenirBold(ofSize: self.labelFontSize)
        label.textColor = UIColor.FreelanceColor.paragraphGray
        return label
    }()
    
    lazy var tasksStackView: UIStackView = { [unowned self] in
        let stackView = UIStackView(arrangedSubviews: [self.tasksRemaining, self.numberOfTasksLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 5
        return stackView
    }()
    
    
    // MARK: Days Views
    
    lazy var dueInLabel: UILabel = {
        let label = UILabel()
        label.text = "Due in"
        label.font = UIFont.avenirBold(ofSize: self.labelFontSize)
        label.textColor = UIColor.FreelanceColor.paragraphGray
        return label
    }()
    
    lazy var numberOfDaysLabel: UILabel = {
        let label = UILabel()
        label.text = "8"
        label.font = UIFont.avenirBold(ofSize: 14)
        label.textColor = UIColor.FreelanceColor.flatRed
        return label
    }()
    
    lazy var daysLabel: UILabel = {
        let label = UILabel()
        label.text = "days"
        label.font = UIFont.avenirBold(ofSize: self.labelFontSize)
        label.textColor = UIColor.FreelanceColor.paragraphGray
        return label
    }()
    
    lazy var daysStackView: UIStackView = { [unowned self] in
        let stackView = UIStackView(arrangedSubviews: [self.dueInLabel, self.numberOfDaysLabel, self.daysLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 5
        return stackView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setSubviewsForAutoLayout([tasksStackView, daysStackView])
        setConstraints()
        backgroundColor = .white
        layer.cornerRadius = 15
        layer.applySketchShadow(color: .black, alpha: 1, x: 0, y: 2, blur: 14, spread: -6)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        
        // MARK: Tasks StackView
        
        NSLayoutConstraint.activate([
            tasksStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            tasksStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
        
        // MARK: Days StackView
        
        NSLayoutConstraint.activate([
            daysStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            daysStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20)
        ])
        
    }
    
}
