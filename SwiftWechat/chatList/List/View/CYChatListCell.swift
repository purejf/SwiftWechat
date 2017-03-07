//
//  CYChatListCell.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/7.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit
import SnapKit

class CYChatListCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.contentView.addSubview(self.icon)
        self.contentView.addSubview(self.titleL)
        self.contentView.addSubview(self.contentL)
        self.contentView.addSubview(self.timeL)
        
        self.icon.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().offset(-5)
            make.width.equalTo(self.icon.snp.height)
        }
        
        self.timeL.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(10)
            make.height.equalTo(13)
        }
        
        self.contentL.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.right).offset(10)
            make.top.equalTo(self.titleL.snp.bottom).offset(5)
            make.height.equalTo(15)
            make.right.equalToSuperview().offset(5)
        }
        
        self.titleL.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.right).offset(10)
            make.top.equalToSuperview().offset(5)
            make.height.equalTo(15)
            make.right.equalTo(self.timeL.snp.left)
        }
    }
    
    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.backgroundColor = UIColor.lightGray
        icon.layer.cornerRadius = 3
        icon.layer.shouldRasterize = true
        icon.layer.masksToBounds = true
        return icon
    }()
    
    private lazy var titleL: UILabel = {
        let titleL = UILabel()
        titleL.font = UIFont.systemFont(ofSize: 13)
        titleL.text = "奈何情深"
        return titleL
    }()
    
    private lazy var contentL: UILabel = {
        let contentL = UILabel()
        contentL.font = UIFont.systemFont(ofSize: 12)
        contentL.textColor = UIColor.lightGray
        contentL.text = "静默，蕴藏伟大"
        return contentL
    }()
    
    private lazy var timeL: UILabel = {
       let timeL = UILabel()
        timeL.textColor = UIColor.lightGray
        timeL.font = UIFont.systemFont(ofSize: 11)
        timeL.textAlignment = .right
        timeL.text = "上午 11:27"
        return timeL
    }()
}
