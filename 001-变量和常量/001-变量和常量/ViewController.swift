//
//  ViewController.swift
//  001-变量和常量
//
//  Created by Oyxiaoxi on 2017/1/5.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo()
    }

    
    // 定义变量和常量
    // var 定义之后可以修改
    // 常量定义之后不可修改 let
    // 自动推导，变量/常量的类型会根据右侧的代码执行结束，推导对应的类型
    // 热键：option + click
    
    func demo1(){
    
        
    }
    
    
    func demo(){
        
        // 整数：Int(Oc 中 NSInteger 类似)
        
        var x = 10
        x = 20
        
        // 小数：Double 精度高 (OC 中 CGFloat)
        let y = 10.5
        
        
        let v = UIView();
        
        print(x)
        print(y)
        print(v)
        
    }


}

