//
//  ViewController.swift
//  SwiftLoggingDemo
//
//  Created by Matsuoka Yoshiteru on 2017/10/06.
//  Copyright © 2017年 culumn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var verboseButton: LoggerButton!
    @IBOutlet weak var debugButton: LoggerButton!
    @IBOutlet weak var infoButton: LoggerButton!
    @IBOutlet weak var warningButton: LoggerButton!
    @IBOutlet weak var errorButton: LoggerButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let statusBar = UIApplication.shared.value(forKey: "statusBar") as? UIView else { return }
        statusBar.backgroundColor = UIColor.darkGray
    }

    @IBAction func didTap(_ sender: LoggerButton) {
        guard let type = sender.type else { return }
        switch type {
        case .verbose:
            log.verbose("did tap verbose button")
        case .debug:
            log.debug("did tap debug button")
        case .info:
            log.info("did tap info button")
        case .warning:
            log.warning("did tap warning button")
        case .error:
            log.error("did tap error button")
        }
    }

}
