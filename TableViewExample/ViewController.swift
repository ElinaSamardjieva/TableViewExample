//
//  ViewController.swift
//  TableViewExample
//
//  Created by Elina Samardjieva on 4/5/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.registerNib(UINib(nibName: "LineTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.sharedManager.dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! LineTableViewCell!
        
        if indexPath.row < DataManager.sharedManager.dataArray.count {
            let color = DataManager.sharedManager.dataArray[indexPath.row]
            
            cell.colorLabel.text = color.name
            cell.colorView.backgroundColor = color.color
        }
        
        cell.selectionStyle = .None
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100.0
    }
    
    // Change the color of a different ViewController
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row < DataManager.sharedManager.dataArray.count {
            let color = DataManager.sharedManager.dataArray[indexPath.row]
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ColorfulViewController") as! ColorfulViewController
            
            vc.color = color
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

