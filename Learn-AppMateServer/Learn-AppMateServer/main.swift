//
//  main.swift
//  Learn-AppMateServer
//
//  Created by Oyxiaoxi on 2017/1/9.
//  Copyright © 2017年 Oyxiaoxi. All rights reserved.
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import PerfectWebSockets

PluginManager.sharedInstance.loadPlugins()

// Create http server
let server = HTTPServer()

// Register your own routes and handlers
var routes = Routes()
    routes.add(method: .get, uri: "/"){
    request, response in
        
    /// 转换为 WebSocket 协议
    WebSocketHandler(handlerProducer: {
        (request: HTTPRequest, protocols: [String]) -> WebSocketSessionHandler? in
        
        /// 返回一个接入层来处理会话
        return AccessLayerHandler.sharedInstance
    }).handleRequest(request: request, response: response)
}

// Add the routes to the server.
server.addRoutes(routes)

// Set a listen port of 8181
server.serverPort = 8181

// Set a document root.
// This is optional. If you do not want to serve static content then do not set this.
// Setting the document root will automatically add a static file handler for the route /**
server.documentRoot = "./webroot"

// Gather command line options and further configure the server.
// Run the server with --help to see the list of supported arguments.
// Command line arguments will supplant any of the values set above.
configureServer(server)

do {
    // Launch the HTTP server.
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
