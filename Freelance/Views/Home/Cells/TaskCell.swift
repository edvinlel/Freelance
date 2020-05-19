//
//  TaskCell.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/17/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    static let identifier = "TaskCell"
    
    let taskTitle: UILabel = {
        let label = UILabel()
        label.text = "Finish the instagram ad"
        label.textColor = UIColor.FreelanceColor.titleBlue
        label.font = UIFont.avenirBold(ofSize: 20)
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.text = "9:00 AM"
        label.textColor = UIColor.FreelanceColor.paragraphGray
        label.font = UIFont.avenirMedium(ofSize: 15)
        return label
    }()
    
    let projectLabel: UILabel = {
        let label = UILabel()
        label.text = "Jain Farm Fresh"
        label.font = UIFont.avenirMedium(ofSize: 15)
        label.textColor = UIColor.FreelanceColor.paragraphGray
        return label
    }()
    
    lazy var subtitleStackView: UIStackView = { [unowned self] in
        let stackView = UIStackView(arrangedSubviews: [self.timeLabel, self.projectLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    lazy var stackView: UIStackView = { [unowned self] in
        let stackView = UIStackView(arrangedSubviews: [self.taskTitle, self.subtitleStackView])
        stackView.axis = .vertical
        stackView.distribution = .fill
        return stackView
    }()
    
    let completionImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage.setImage(withIcon: UIImage.Icon.unfinishedTask)
        return imageView
    }()
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setSubviewsForAutoLayout([stackView, completionImage])
        setConstraints()
        
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(task: Task) {
        
    }
    
    
    // MARK: Constraints
    private func setConstraints() {
        // MARK: Title
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            completionImage.heightAnchor.constraint(equalToConstant: 21),
            completionImage.widthAnchor.constraint(equalToConstant: 21),
            completionImage.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
            completionImage.rightAnchor.constraint(equalTo: stackView.leftAnchor, constant: -30)
        ])
    }
    
}
