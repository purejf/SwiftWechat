//
//  CYTabbarController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYTabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(hue:0.37, saturation:1.00, brightness:0.74, alpha:1.00)
        addChilds()
    }
    
    private func addChilds() {
        addChildVc(childVc: CYChatListController.classForCoder(), title: "微信", image: "cy_tabbar_chatList")
        addChildVc(childVc: CYContactListController.classForCoder(), title: "通讯录", image: "cy_tabbar_contacts")
        addChildVc(childVc: CYDiscoveyController.classForCoder(), title: "发现", image: "cy_tabbar_discovery")
        addChildVc(childVc: CYProfileController.classForCoder(), title: "我", image: "cy_tabbar_profile")
    }
    
    private func addChildVc(childVc: AnyClass, title: String, image: String) {
        let vc = (childVc as! UIViewController.Type).init()
        vc.title = title
        vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -1)
        vc.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage(named: image + "_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.black.withAlphaComponent(0.5)], for: .normal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor(hue:0.37, saturation:1.00, brightness:0.74, alpha:1.00)], for: .selected)
        let nav = CYBaseNavigationController(rootViewController: vc)
        addChildViewController(nav)
    } 
    
}
