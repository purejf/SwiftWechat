//
//  CYChatDetailController.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/7.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYChatDetailController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        
        self.navigationItem.title = "聊天"
        
        self.view.addSubview(self.toolbar)
        self.view.addSubview(self.tb)
        
        self.toolbar.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(44)
        }
        
        self.tb.snp.makeConstraints { (make) in
            make.left.top.right.equalToSuperview()
            make.bottom.equalTo(self.toolbar.snp.top)
        }
    }
    
    private lazy var toolbar: CYChatToolbar = {
        let toolbar = CYChatToolbar()
        toolbar.backgroundColor = UIColor.red
        return toolbar
    }()
    
    private lazy var tb: UITableView = {
        let tb = UITableView()
        tb.showsHorizontalScrollIndicator = false
        tb.tableFooterView = UIView()
        tb.delegate = self
        tb.dataSource = self
        return tb
    }()
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    
}
