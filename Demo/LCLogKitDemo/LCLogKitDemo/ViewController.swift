//
//  ViewController.swift
//  LCLogKitDemo
//
//  Created by DevLiuSir on 2019/12/20.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        LCLogKit.debug("控制器加载")
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

