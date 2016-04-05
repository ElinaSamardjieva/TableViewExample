//
//  DataManager.swift
//  TableViewExample
//
//  Created by Elina Samardjieva on 4/5/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

private let _sharedInstance = DataManager()

class DataManager: NSObject {
    
    var dataArray = [Color(name: "green", color: UIColor.greenColor()), Color(name: "yellow", color: UIColor.yellowColor()),Color(name: "blue", color: UIColor.brownColor())]
    
    class var sharedManager: DataManager {
        return _sharedInstance
    }

}
