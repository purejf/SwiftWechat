//
//  CYProfileController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYProfileController: UITableViewController {
    
    static let cellID = "cellID"
    
    static let headerCellID = "headerCellID"
    
    let titles = [["相册", "收藏", "钱包", "卡包"],
                  ["表情"],
                  ["设置"]]
    
    let images = [["cy_pro_album", "cy_pro_favorite", "cy_pro_wallet", "cy_pro_wallet"],
                  ["cy_pro_setting"],
                  ["cy_pro_setting"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor(hue:0.67, saturation:0.02, brightness:0.96, alpha:1.00)
        self.tableView.sectionFooterHeight = 8
        self.tableView.sectionHeaderHeight = 8
        self.tableView.tableFooterView = UIView()
        self.tableView.separatorInset = UIEdgeInsetsMake(0, 15, 0, 0)
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: CYProfileController.cellID)
        self.tableView.register(CYProfileHeaderCell.classForCoder(), forCellReuseIdentifier: CYProfileController.headerCellID)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.titles.count + 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        let _titles = self.titles[section - 1]
        return _titles.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == self.titles.count {
            return 0.01
        }
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CYProfileController.headerCellID) as! CYProfileHeaderCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: CYProfileController.cellID)
            cell?.textLabel?.font = UIFont.systemFont(ofSize: 13)
            cell?.accessoryType = .disclosureIndicator
            let _titles = self.titles[indexPath.section - 1]
            cell?.textLabel?.text = _titles[indexPath.row]
            let _images = self.images[indexPath.section - 1]
            cell?.imageView?.image = UIImage(named: _images[indexPath.row])
            return cell!
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 70
        }
        return 44
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
           let info = CYProfileInfoViewController()
           info.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(info, animated: true)
        default: break
            
        }
    }
}
