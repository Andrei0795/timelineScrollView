//
//  CustomTableCellTableViewCell.swift
//  TimelineScroll
//
//  Created by Andrei Ionescu on 27/12/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

import UIKit

class CustomTableCellTableViewCell: UITableViewCell {
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var cellNumberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
