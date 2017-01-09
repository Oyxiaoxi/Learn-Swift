//
//  plugins.swift
//  Learn-AppMateServer
//
//  Created by Oyxiaoxi on 2017/1/9.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import Foundation

class PluginManager{
    
    static var sharedInstance = PluginManager()
    
    private init() {}
    
    func loadPlugins(){
    
        let sessions = Session()
        
        PublishCenter.sharedInstance.register(topic: "App.Start.Log", module: sessions)
        PublishCenter.sharedInstance.register(topic: "App.End.Log", module: sessions)
        PublishCenter.sharedInstance.register(topic: "session.list", module: sessions)
        PublishCenter.sharedInstance.register(topic: "HeartBeat.ACK", module: sessions)
        PublishCenter.sharedInstance.register(topic: "*.Log", module: Test())
        
    }
    
}
