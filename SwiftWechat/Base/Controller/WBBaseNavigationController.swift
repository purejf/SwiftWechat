//
//  WBBaseNavigationController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class WBBaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        let image = UIImage(named: "wb_nav_background")
        self.navigationBar.setBackgroundImage(image, for: .any, barMetrics: .default)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white,
                                                  NSFontAttributeName : UIFont.boldSystemFont(ofSize: 15)]
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            btn.setImage(UIImage(named: "wb_nav_item_back"), for: .normal)
            btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
            btn.tintColor = UIColor.white
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        } else {
            viewController.navigationItem.leftBarButtonItem = nil
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc private func btnClick() {
        self.navigationController!.popViewController(animated: true)
    }
}
