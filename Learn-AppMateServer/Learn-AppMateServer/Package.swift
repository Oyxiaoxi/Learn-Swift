//
//  Package.swift
//  Learn-AppMateServer
//
//  Created by Oyxiaoxi on 2017/1/9.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import PackageDescription

let package = Package (
    name: "PerfectTemplate",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", majorVersion: 2, minor: 0),
        .Package(url: "https://github.com/c98/Perfect-WebSockets.git", "3.0.0-rc.1")
    ]
)
