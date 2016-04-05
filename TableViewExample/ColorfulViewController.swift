//
//  ColorfulViewController.swift
//  TableViewExample
//
//  Created by Elina Samardjieva on 4/5/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class ColorfulViewController: UIViewController {

    var color: Color?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let color = color {
            view.backgroundColor = color.color
        }
        
    }
}
