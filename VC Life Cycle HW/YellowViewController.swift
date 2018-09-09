//
//  YellowViewController.swift
//  VC Life Cycle HW
//
//  Created by Evgeniy Ryshkov on 08.09.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class YellowViewController: ViewController {

    @IBOutlet weak var tmpTableView: UITableView!
    
    override weak var tableView: UITableView! {
        return tmpTableView
    }
    
    override var name: String {
        return "YellowViewController"
    }

}
