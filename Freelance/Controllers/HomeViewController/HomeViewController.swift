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
        
        homeView.taskContainerView.taskTableView.register(TaskCell.self, forCellReuseIdentifier: TaskCell.identifier)
        homeView.taskContainerView.taskTableView.delegate = self
        homeView.taskContainerView.taskTableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewContoller = ProjectViewController()
        viewContoller.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Helloooo", style: .plain, target: nil, action: nil)
        navigationController?.pushViewController(viewContoller, animated: false)
        
    }
    
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TaskCell.identifier, for: indexPath) as? TaskCell else {
            return UITableViewCell()
        }
        
        
        
        return cell
    }
}
