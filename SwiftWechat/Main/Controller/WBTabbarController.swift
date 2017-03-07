//
//  WBTabbarController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class WBTabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(hue:0.37, saturation:1.00, brightness:0.74, alpha:1.00)
        addChilds()
    }
    
    private func addChilds() {
        addChildVc(childVc: WBChatListController.classForCoder(), title: "微信", image: "wb_tabbar_chatList")
        addChildVc(childVc: WBContactListController.classForCoder(), title: "通讯录", image: "wb_tabbar_contacts")
        addChildVc(childVc: WBDiscoveyController.classForCoder(), title: "发现", image: "wb_tabbar_discovery")
        addChildVc(childVc: WBProfileController.classForCoder(), title: "我", image: "wb_tabbar_profile")
    }
    
    private func addChildVc(childVc: AnyClass, title: String, image: String) {
        let vc = (childVc as! UIViewController.Type).init()
        vc.title = title
        vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -1)
        vc.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage(named: image + "_selected")?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.black.withAlphaComponent(0.5)], for: .normal)
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor(hue:0.37, saturation:1.00, brightness:0.74, alpha:1.00)], for: .selected)
        let nav = WBBaseNavigationController(rootViewController: vc)
        addChildViewController(nav)
    } 
    
}
