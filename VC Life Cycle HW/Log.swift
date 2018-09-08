//
//  Log.swift
//  VC Life Cycle HW
//
//  Created by Evgeniy Ryshkov on 08.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit
class Log {
    var lines: [String?] = [String]()
    static var context = Log()
    
    private init() {   }
    
    func addLine(line: String, currentTextView: UITextView) {
        let newLine = "\(self.lines.count): \(line)\n"
        
        self.lines.append(newLine)
        
        currentTextView.text.removeAll()
        for line in lines {
            if let line = line {
                currentTextView.text.append(line)
            }
        }
        
    }
}
