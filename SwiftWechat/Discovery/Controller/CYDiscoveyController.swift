//
//  CYDiscoveyController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYDiscoveyController: UITableViewController {
    
    static let cellID = "cellID"
    
    let titles = [["朋友圈"],
                  ["扫一扫", "摇一摇"],
                  ["附近的人", "漂流瓶"],
                  ["购物", "游戏"],
                  ["小程序"]]
    
    let images = [["cy_discovery_circle"],
                  ["cy_discovery_scan", "cy_discovery_shake"],
                  ["cy_discovery_nearby", "cy_discovery_bottle"],
                  ["cy_discovery_circle", "cy_discovery_game"],
                  ["cy_discovery_circle"]]
    
    override init(style: UITableViewStyle) {
        super.init(style: .grouped)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 0.01))
        self.tableView.tableFooterView = UIView()
        self.tableView.rowHeight = 40
        self.tableView.sectionHeaderHeight = 8
        self.tableView.sectionFooterHeight = 8
        self.tableView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 0)
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: CYDiscoveyController.cellID)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.titles.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let _titles = self.titles[section]
        return _titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CYDiscoveyController.cellID, for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.font = UIFont.systemFont(ofSize: 13)
        let _titles = self.titles[indexPath.section]
        cell.textLabel?.text = _titles[indexPath.row]
        let _images = self.images[indexPath.section]
        cell.imageView?.image = UIImage(named: _images[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
