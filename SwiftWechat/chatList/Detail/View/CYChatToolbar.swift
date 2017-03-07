//
//  CYChatToolbar.swift
//  SwiftWechat
//
//  Created by Charles on 2017/3/7.
//  Copyright © 2017年 Charles. All rights reserved.
//

import UIKit

class CYChatToolbar: UIView {
    
    // 点击语音
    @objc private func voiceBtnClick() {
        
    }
    
    // 点击表情
    @objc private func faceBtnClick() {
        
    }
    
    // 添加
    @objc private func addBtnClick() {
        
    }
    
    private lazy var add: UIButton = {
        let add = UIButton()
        add.addTarget(self, action: #selector(addBtnClick), for: .touchUpInside)
        return add
    }()
    
    private lazy var face: UIButton = {
      let face = UIButton()
        face.addTarget(self, action: #selector(faceBtnClick), for: .touchUpInside)
        return face
    }()
    
    private lazy var input: UITextField = {
        let input = UITextField()
        return input
    }()
    
    private lazy var voiceBtn: UIButton = {
        let voice = UIButton()
        voice.addTarget(self, action: #selector(voiceBtnClick), for: .touchUpInside)
        return voice
    }()
    
}
