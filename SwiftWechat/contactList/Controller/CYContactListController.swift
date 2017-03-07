//
//  CYContactListController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYContactListController: UITableViewController {

    static let cellID = "cellID"
    
    override init(style: UITableViewStyle) {
        super.init(style: .grouped)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupItems()
        setupViews()
    }
    
    private func setupViews() {
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 0.01))
        self.tableView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 0)
        self.tableView.register(CYContactListCell.classForCoder(), forCellReuseIdentifier: CYContactListController.cellID)
        self.tableView.tableFooterView = UIView()
        self.tableView.rowHeight = 44
    }
    
    private func setupItems() {
        let image = UIImage(named: "cy_nav_item_contacts_add_friend")
        let item = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(rightItemClick))
        self.navigationItem.setRightItem(rightItem: item)
    }
    
    // 添加联系人
    @objc private func rightItemClick() {
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CYContactListController.cellID, for: indexPath) as! CYContactListCell
        return cell
    }
}
