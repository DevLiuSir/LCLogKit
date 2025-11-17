//
//  AppDelegate.swift
//  LCLogKitDemo
//
//  Created by DevLiuSir on 2019/12/20.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        LCLogKit.debug("调试输出", showFunction: false)
        LCLogKit.info("普通信息")
        LCLogKit.success("成功信息")
        LCLogKit.warning("警告信息")
        LCLogKit.error("错误信息")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

