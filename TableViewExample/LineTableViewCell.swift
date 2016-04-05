//
//  LineTableViewCell.swift
//  TableViewExample
//
//  Created by Elina Samardjieva on 4/5/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class LineTableViewCell: UITableViewCell {

    @IBOutlet var colorLabel: UILabel!
    @IBOutlet var colorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        colorView.layer.cornerRadius = CGRectGetHeight(colorView.bounds) / 2.0
    }
    
}
