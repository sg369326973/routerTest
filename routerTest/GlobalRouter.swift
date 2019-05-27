//
//  GlobalRouter.swift
//  routerTest
//
//  Created by addcn591 on 2019/5/24.
//  Copyright © 2019 Addcn. All rights reserved.
//

import UIKit

//Bundle
let kCFBundle = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String ?? ""

class GlobalRouter: NSObject {
    class func registerRoutes() {
        //获取当前导航
        var pushClassStance: UINavigationController {
            get {
                let tabVC:UITabBarController = UIApplication.shared.keyWindow?.rootViewController as! UITabBarController
                let pushClassStance:UINavigationController = tabVC.viewControllers?[tabVC.selectedIndex] as! UINavigationController
                return pushClassStance
            }
        }
        //swift页面跳转
        JLRoutes.global().addRoute("/:ViewController") { (param:[String : Any]) -> Bool in
            let vcName = param["ViewController"] as? String ?? ""
            //oc类
            let ocClz = NSClassFromString("\(vcName)") as? UIViewController.Type
            //swift类
            let swfClz = NSClassFromString("\(kCFBundle).\(vcName)") as? UIViewController.Type
            //根据vcName获取对应的类（oc/swift）
            if let clz = ocClz ?? swfClz {
                //過濾參數關鍵字
                let filterParam = param.filter({ (arg0) -> Bool in
                    let (key, _) = arg0
                    return key != "JLRoutePattern" && key != "JLRouteURL" && key != "JLRouteScheme" && key != "ViewController"
                })
                let vc:UIViewController = clz.init()
                //反射类属性
//                let vcM = Mirror(reflecting: vc)
                //Runtime获取类属性
                var count:UInt32 = 0
                let propertyList = class_copyPropertyList(clz, &count)
                //找到对应的类属性并赋值
                for (key,value) in filterParam {
                    print("key:\(key),value:\(value)")
//                    for child in vcM.children {
//                        if key == child.label {
//                            vc.setValue(value, forKey: key)
//                        }
//                    }
                    for i in 0..<numericCast(count) {
                        let property = property_getName((propertyList?[i])!);
                        let proper = String.init(cString: property)
                        if key == proper {
                            vc.setValue(value, forKey: key)
                        }
                    }
                }
                //释放内存
                free(propertyList)
                pushClassStance.pushViewController(vc, animated: true)
                return true
            }
            return false
        }
    }
}
