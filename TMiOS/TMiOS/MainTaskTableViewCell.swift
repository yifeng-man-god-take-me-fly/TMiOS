//
//  MainTaskTableViewCell.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/23.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import UIKit

class MainTaskTableViewCell: UITableViewCell {
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var colorLabel: UILabel!
	
	var task: Task = Task() {
		didSet {
			configureView()
		}
	}
	
	func configureView() {
		titleLabel.text = task.name
		colorLabel.backgroundColor = task.color
	}

    override func awakeFromNib() {
		configureView()
        // super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
