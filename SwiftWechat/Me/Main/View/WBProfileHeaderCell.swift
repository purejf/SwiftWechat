//
//  WBProfileHeaderView.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/6.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit
import SnapKit

class WBProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(self.img)
        addSubview(self.nameL)
        addSubview(self.wechatL)
        addSubview(self.codeImg)
        
        self.img.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
            make.width.equalTo(make.height as! ConstraintRelatableTarget)
        }
        
        self.nameL.snp.makeConstraints { (make) in
            make.left.equalTo(self.img.snp.right).offset(10)
            make.top.equalToSuperview().offset(10)
            make.height.equalTo(15)
            make.right.equalToSuperview().offset(-10)
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
        return wechatL
    }()
    
    private lazy var codeImg: UIImageView = {
        let codeImg = UIImageView()
        return codeImg
    }()
}
