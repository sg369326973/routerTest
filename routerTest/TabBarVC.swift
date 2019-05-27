//
//  TabBarVC.swift
//  routerTest
//
//  Created by addcn591 on 2019/5/24.
//  Copyright © 2019 Addcn. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let navVC = UINavigationController.init(rootViewController: VC1.init())
        self.setViewControllers([navVC], animated: true)
    }

}
