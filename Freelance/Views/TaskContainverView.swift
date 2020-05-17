//
//  TaskContainverView.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/17/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

//
//  EnterTaskView.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/15/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class TaskContainerView: UIView {
    
    let todayLabel: UILabel = {
        let label = UILabel()
        label.text = "Today"
        label.font = UIFont.avenirDemiBold(ofSize: 22)
        label.textColor = UIColor.FreelanceColor.paragraphGray
        return label
    }()
    
    let taskTableView: UITableView = {
        let tableView = UITableView()
        tableView.rowHeight = 100
        tableView.separatorStyle = .none
        return tableView
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setSubviewsForAutoLayout([todayLabel, taskTableView])
        setConstraints()
        
        layer.cornerRadius = 40
        backgroundColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        
        // MARK: TodayLabel
        NSLayoutConstraint.activate([
            todayLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 40),
            todayLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40)
        ])
        
        // MARK: TableView
        NSLayoutConstraint.activate([
            taskTableView.topAnchor.constraint(equalTo: todayLabel.bottomAnchor, constant: 20),
            taskTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            taskTableView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            taskTableView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0)
        ])
    }
}
