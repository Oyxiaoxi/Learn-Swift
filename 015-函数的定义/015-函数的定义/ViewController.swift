//
//  ViewController.swift
//  015-函数的定义
//
//  Created by Oyxiaoxi on 2017/1/5.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // swift 1.0 sum(x: 10, y: 50),所有的形参名称都会省略
        // swift 2.0 sum(x: 10, y: 50),第一个形参的名称省略
        // swift 3.0 调用方法 - > 
        print(sum(x: 10, y: 50))
        
    }

    /// 函数定义：格式，函数名(形参列表) - 返回值类型
    func sum(x: Int , y: Int) -> Int {
        return x + y
    }

}

