//
//  HomeViewController.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/14/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView: HomeView! { return self.view as? HomeView }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view = HomeView()
        
        homeView.projectCollectionView.register(ProjectCell.self, forCellWithReuseIdentifier: ProjectCell.identifier)
        homeView.projectCollectionView.delegate = self
        homeView.projectCollectionView.dataSource = self
    }


}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProjectCell.identifier, for: indexPath) as? ProjectCell else { return UICollectionViewCell() }
        
        
        
        return cell
    }
    
    
}
