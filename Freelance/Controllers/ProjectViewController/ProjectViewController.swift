//
//  ProjectViewController.swift
//  Freelance
//
//  Created by Edvin Lellhame on 5/17/20.
//  Copyright © 2020 Edvin Lellhame. All rights reserved.
//

import UIKit

class ProjectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.isHidden = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            
        self.navigationItem.leftBarButtonItem?.title = ""
    }


}
