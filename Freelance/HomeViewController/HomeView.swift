//
//  HomeView.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/15/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
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

    let hamburgerMenuButton: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage.setImage(withIcon: UIImage.Icon.hamburgerButton)
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    let helloLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.avenirDemiBold(ofSize: 30)
        label.textColor = UIColor.FreelanceColor.headerBlue
        label.text = "Hello, Billy!"
        return label
    }()
    
    /// Project CollectionView
    lazy var projectCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
       layout.scrollDirection = .horizontal
       
       layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
       layout.itemSize = CGSize(width: 187, height: 240)
       
       let collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
       collectionView.showsHorizontalScrollIndicator = false
       collectionView.backgroundColor = .clear
    
        return collectionView
    }()
    
    lazy var todayLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.avenirDemiBold(ofSize: 22)
        label.textColor = UIColor.FreelanceColor.paragraphGray
        return label
    }()
    
    /// Table View
    let taskContainerView: TaskContainerView = {
        let view = TaskContainerView()
        return view
    }()
    
    let newTaskView: NewTaskView = {
        let view = NewTaskView()
        return view
    }()
    
    
    
    // MARK: Properties
    
    // TODO: How do I make this private but accessible in extension
    let leadingConstant: CGFloat = 30
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.setSubviewForAutoLayout(scrollView)
        scrollView.setSubviewForAutoLayout(containerView)
        scrollView.setSubviewsForAutoLayout([
            hamburgerMenuButton,
            helloLabel,
            projectCollectionView,
            taskContainerView,
            newTaskView
        ])
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
