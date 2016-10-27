//
//  ViewController.swift
//  CustomTableViewCellSpacing
//
//  Created by CheapGo02 on 10/27/16.
//  Copyright © 2016 CheapGo02. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    let animals: [String] = ["Horse","Cow","Camel","Sheep","Goat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 100.0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = self.animals[indexPath.row]
        cell.backgroundColor = UIColor.cyan
    
        
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 50.0
//    }
//    
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 20.0
//    }
//    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = UIColor.clear
//        return headerView
//        
//    }
}

