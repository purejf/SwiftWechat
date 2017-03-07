//
//  CYBaseNavigationController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYBaseNavigationController: UINavigationController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.interactivePopGestureRecognizer?.delegate = self
        let image = UIImage(named: "cy_nav_background")
        self.navigationBar.setBackgroundImage(image, for: .any, barMetrics: .default)
        self.navigationBar.barStyle = .blackTranslucent
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white,
                                                  NSFontAttributeName : UIFont.boldSystemFont(ofSize: 14)]
        self.navigationBar.tintColor = UIColor.white
    }
}

extension UINavigationItem {
    func setRightItem(rightItem: UIBarButtonItem) {
        let space = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        space.width = -10
        self.rightBarButtonItems = [space, rightItem]
    }
}
