//
//  VC3.swift
//  routerTest
//
//  Created by addcn591 on 2019/5/24.
//  Copyright © 2019 Addcn. All rights reserved.
//

import UIKit

class VC3: UIViewController {

    @objc var userName:String = ""
    @objc var password:Int = 0
    @objc var isLogin:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "VC3"
        
        // Do any additional setup after loading the view.
        
        let userNameLabel = UILabel.init(frame: CGRect.init(x: self.view.center.x, y: 100, width: 100, height: 30))
        userNameLabel.text = userName
        self.view.addSubview(userNameLabel)
        
        let passwordLabel = UILabel.init(frame: CGRect.init(x: self.view.center.x, y: 130, width: 100, height: 30))
        passwordLabel.text = String(password)
        self.view.addSubview(passwordLabel)
        
        let isLoginLabel = UILabel.init(frame: CGRect.init(x: self.view.center.x, y: 160, width: 100, height: 30))
        isLoginLabel.text = String(isLogin)
        self.view.addSubview(isLoginLabel)
    }
    

}
