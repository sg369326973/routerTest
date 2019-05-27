//
//  ViewController.swift
//  routerTest
//
//  Created by addcn591 on 2019/3/26.
//  Copyright © 2019 Addcn. All rights reserved.
//

import UIKit

class VC1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "VC1"
        
        let btn = UIButton(frame: CGRect.init(x: 100, y: 100, width: 150, height: 50))
        btn.backgroundColor = UIColor.blue
        btn.setTitle("VC2", for: UIControl.State.normal)
        btn.addTarget(self, action: #selector(clickVC2), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn)
        
        let btn2 = UIButton(frame: CGRect.init(x: 100, y: 200, width: 150, height: 50))
        btn2.backgroundColor = UIColor.blue
        btn2.setTitle("VC3", for: UIControl.State.normal)
        btn2.addTarget(self, action: #selector(clickVC3), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn2)
        
        let btn3 = UIButton(frame: CGRect.init(x: 100, y: 300, width: 150, height: 50))
        btn3.backgroundColor = UIColor.blue
        btn3.setTitle("ViewController1", for: UIControl.State.normal)
        btn3.addTarget(self, action: #selector(clickViewController1), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn3)
        
        let btn4 = UIButton(frame: CGRect.init(x: 100, y: 400, width: 150, height: 50))
        btn4.backgroundColor = UIColor.blue
        btn4.setTitle("ViewController2", for: UIControl.State.normal)
        btn4.addTarget(self, action: #selector(clickViewController2), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn4)
    }
    
    @objc func clickVC2() -> Void {
        let url:URL = URL.init(string: "XIAOGUO://VC2")!
        JLRoutes.routeURL(url)
    }
    
    @objc func clickVC3() -> Void {
        let url:URL = URL.init(string: "XIAOGUO://VC3?userName=xiaoguo&password=123456&isLogin=1")!
        JLRoutes.routeURL(url)
    }
    
    @objc func clickViewController1() -> Void {
        let url:URL = URL.init(string: "XIAOGUO://ViewController1")!
        JLRoutes.routeURL(url)
    }
    
    @objc func clickViewController2() -> Void {
        let url:URL = URL.init(string: "XIAOGUO://ViewController2?userName=xiaoguo&password=123456&isLogin=1")!
        JLRoutes.routeURL(url)
    }
}


