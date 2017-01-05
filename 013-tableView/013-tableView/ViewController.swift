//
//  ViewController.swift
//  013-tableView
//
//  Created by Oyxiaoxi on 2017/1/5.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import UIKit


/** 
*
* @interface ViewController() <UiTableViewDataSourece>
* UiTableViewDataSourece 泛型支持
* Swift 为了与 Objective-C的交互性,做了一些限制 不能直接在 UITableView的方法中使用泛型类型的参数
* 指针，内存
*
**/

class ViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        
        
        // 提示： textLabel 是可选的
        cell.textLabel?.text = "Hello ~~~ \(indexPath.row)"
        
        return cell
    }
    
    func setupUI(){
        
        // 1.创建表格
        
        let tv = UITableView(frame: view.bounds ,style: .plain)
        
        // 2.填加到视图
        
        view.addSubview(tv)
        
        // 3.注册可重用 cell [UItableViewCell class]
        
        tv.register(UITableViewCell.self,forCellReuseIdentifier:"CellId")
        
        // 4.设置数据源 , 在swift中不遵守协议是一种错误
        
        tv.dataSource = self
    }


}

