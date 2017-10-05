//
//  LoggerButton.swift
//  SwiftLoggingDemo
//
//  Created by Matsuoka Yoshiteru on 2017/10/06.
//  Copyright © 2017年 culumn. All rights reserved.
//

import UIKit

class LoggerButton: UIButton {

    enum LogType: Int {
        case verbose = 0
        case debug = 1
        case info = 2
        case warning = 3
        case error = 4
    }

    var type: LogType?
    @IBInspectable var option: Int = -1 {
        didSet {
            guard let type = LogType.init(rawValue: option) else { return }
            self.type = type
        }
    }
}
