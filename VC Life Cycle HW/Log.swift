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
    
    private let sectionNumber = 0
    
    private init() {   }
    
    func addLine(line: String, currentTableView: UITableView) {
        let newLine = "\(self.lines.count): \(line)\n"
        
        self.lines.append(newLine)
        
        var indexPathes = [IndexPath]()
        var rowsInTable = currentTableView.numberOfRows(inSection: sectionNumber)
        let rowsInLog = lines.count
        
        while rowsInLog > rowsInTable {
            let indexPath = IndexPath(row: rowsInLog - rowsInTable - 1, section: sectionNumber)
            indexPathes.append(indexPath)
            rowsInTable += 1
        }
        
        currentTableView.insertRows(at: indexPathes, with: .fade)
        
    }
}
