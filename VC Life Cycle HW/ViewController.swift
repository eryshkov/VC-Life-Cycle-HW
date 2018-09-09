//
//  ViewController.swift
//  VC Life Cycle HW
//
//  Created by Evgeniy Ryshkov on 08.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let log = Log.context
    let sectionNumber = 0
    
    var name: String {
        return "ViewController"
    }
    weak var tableView: UITableView! {
        return UITableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        addToTableView(line: "\(name) \(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addToTableView(line: "\(name) \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addToTableView(line: "\(name) \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addToTableView(line: "\(name) \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addToTableView(line: "\(name) \(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        addToTableView(line: "\(name) \(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        addToTableView(line: "\(name) \(#function)")
    }
    
    //MARK: - Update View
    func addToTableView(line: String) {
        log.addLine(line: line)
        updateTableView()
    }
    
    func updateTableView() {
        var indexPathes = [IndexPath]()
        var rowsInTable = tableView.numberOfRows(inSection: sectionNumber)
        let rowsInLog = log.lines.count
        
        while rowsInLog > rowsInTable {
            let indexPath = IndexPath(row: rowsInLog - rowsInTable - 1, section: sectionNumber)
            indexPathes.append(indexPath)
            rowsInTable += 1
        }
        
        tableView.insertRows(at: indexPathes, with: .fade)
    }
    
}

//MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return log.lines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        cell.textLabel?.text = log.lines.reversed()[indexPath.row]
        
        return cell
    }
    
}






