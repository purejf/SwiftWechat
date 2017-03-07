//
//  WBProfileHeaderCell.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit
import SnapKit

class WBProfileHeaderCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.accessoryType = .disclosureIndicator
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.contentView.addSubview(self.img)
        self.contentView.addSubview(self.nameL)
        self.contentView.addSubview(self.wechatL)
        self.contentView.addSubview(self.codeImg)
        
        self.img.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
            make.width.equalTo(self.img.snp.height)
        }
        
        self.nameL.snp.makeConstraints { (make) in
            make.left.equalTo(self.img.snp.right).offset(10)
            make.top.equalToSuperview().offset(15)
            make.height.equalTo(15)
            make.right.equalToSuperview().offset(-10)
        }
        
        self.wechatL.snp.makeConstraints { (make) in
            make.left.equalTo(self.img.snp.right).offset(10)
            make.top.equalTo(self.nameL.snp.bottom).offset(10)
            make.height.equalTo(15)
        }
        
        self.codeImg.snp.makeConstraints { (make) in
            make.right.equalToSuperview()
            make.centerY.equalToSuperview()
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
    
    private lazy var img: UIImageView = {
        let img = UIImageView()
        img.backgroundColor = UIColor.lightGray
        return img
    }()
    
    private lazy var nameL: UILabel = {
        let nameL = UILabel()
        nameL.font = UIFont.systemFont(ofSize: 14)
        nameL.text = "Charles"
        return nameL
    }()
    
    private lazy var wechatL: UILabel = {
        let wechatL = UILabel()
        wechatL.font = UIFont.systemFont(ofSize: 13)
        wechatL.text = "微信号：theseaineye"
        return wechatL
    }()
    
    private lazy var codeImg: UIImageView = {
        let codeImg = UIImageView()
        codeImg.backgroundColor = UIColor.lightGray
        return codeImg
    }()
}
