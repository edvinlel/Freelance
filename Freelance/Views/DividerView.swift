//
//  DividerView.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/17/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class DividerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.FreelanceColor.paragraphGray
        alpha = 0.3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
