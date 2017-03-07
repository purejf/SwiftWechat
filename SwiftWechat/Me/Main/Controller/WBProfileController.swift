//
//  WBProfileController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class WBProfileController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    static let cellID = "cellID"
    
    static let headerCellID = "headerCellID"
    
    let titles = [["相册", "收藏", "钱包", "卡包"],
                  ["表情"],
                  ["设置"]]
    
    let images = [["wb_pro_album", "wb_pro_favorite", "wb_pro_wallet", "wb_pro_wallet"],
                  ["wb_pro_setting"],
                  ["wb_pro_setting"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.tableView)
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: WBProfileController.cellID)
        self.tableView.register(WBProfileHeaderCell.classForCoder(), forCellReuseIdentifier: WBProfileController.headerCellID)
    }
    
    private lazy var tableView: UITableView = {
        let tb = UITableView(frame: self.view.bounds, style: .grouped)
        tb.tableFooterView = UIView()
        tb.showsVerticalScrollIndicator = false
        tb.showsHorizontalScrollIndicator = false
        tb.delegate = self
        tb.dataSource = self
        tb.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 0.01))
        return tb
    }()
}

// MARK: UITableViewDelegate, UITableViewDataSource
extension WBProfileController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.titles.count + 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        let _titles = self.titles[section - 1]
        return _titles.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: WBProfileController.headerCellID) as! WBProfileHeaderCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: WBProfileController.cellID)
            cell?.textLabel?.font = UIFont.systemFont(ofSize: 13)
            cell?.accessoryType = .disclosureIndicator
            let _titles = self.titles[indexPath.section - 1]
            cell?.textLabel?.text = _titles[indexPath.row]
            let _images = self.images[indexPath.section - 1]
            cell?.imageView?.image = UIImage(named: _images[indexPath.row])
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 70
        }
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
