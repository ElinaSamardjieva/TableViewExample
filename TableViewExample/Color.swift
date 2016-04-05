//
//  Color.swift
//  TableViewExample
//
//  Created by Elina Samardjieva on 4/5/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class Color: NSObject {
    
    var name = ""
    var color = UIColor()
    
    init(name: String, color: UIColor) {
        self.name = name
        self.color = color
    }
}
