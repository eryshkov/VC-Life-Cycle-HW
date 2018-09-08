//
//  RedViewController.swift
//  VC Life Cycle HW
//
//  Created by Evgeniy Ryshkov on 08.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    let name = "RedViewController"
    let log = Log.context
    
    override func viewDidLoad() {
        super.viewDidLoad()
        log.addLine(line: "\(name) \(#function)", currentTextView: textView)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        log.addLine(line: "\(name) \(#function)", currentTextView: textView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        log.addLine(line: "\(name) \(#function)", currentTextView: textView)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        log.addLine(line: "\(name) \(#function)", currentTextView: textView)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        log.addLine(line: "\(name) \(#function)", currentTextView: textView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        log.addLine(line: "\(name) \(#function)", currentTextView: textView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        log.addLine(line: "\(name) \(#function)", currentTextView: textView)
    }

}

