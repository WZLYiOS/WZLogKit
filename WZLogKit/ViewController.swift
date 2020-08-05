//
//  ViewController.swift
//  WZLogKit
//
//  Created by xiaobin liu on 2019/7/30.
//  Copyright © 2019 xiaobin liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        WZLogger.setLog(level: WZLogger.Level.off)
        WZLogger.info("所有打印信息都关闭")
        
        WZLogger.setLog(level: WZLogger.Level.debug)
        WZLogger.debug("debug信息")
        
        WZLogger.setLog(level: WZLogger.Level.info)
        WZLogger.info("信息")
        
        WZLogger.setLog(level: WZLogger.Level.warning)
        WZLogger.warning("警告信息")
        
        WZLogger.setLog(level: WZLogger.Level.error)
        WZLogger.error("错误信息")
        
        WZLogger.setLog(level: WZLogger.Level.all)
        WZLogger.info("所有信息都打印")
    }
}

