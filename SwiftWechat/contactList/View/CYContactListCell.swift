//
//  CYContactListCell.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/7.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYContactListCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.contentView.addSubview(self.icon)
        self.contentView.addSubview(self.nameL)
        
        self.icon.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(8)
            make.top.equalToSuperview().offset(8)
            make.bottom.equalToSuperview().offset(-8)
            make.width.equalTo(self.icon.snp.height)
        }
        
        self.nameL.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.right).offset(5)
            make.centerY.equalToSuperview()
        }
    }
    
    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = UIColor.lightGray
        return icon
    }()
    
    private lazy var nameL: UILabel = {
        let nameL = UILabel()
        nameL.font = UIFont.systemFont(ofSize: 12)
        nameL.text = "CocoaChina"
        return nameL
    }()
    
}
