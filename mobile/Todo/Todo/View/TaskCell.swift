//
//  TaskCell.swift
//  Todo
//
//  Created by Khoi Nguyen on 10/11/17.
//  Copyright © 2017 Khoi Nguyen. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    var task: Task? {
        didSet{
            guard let task = task else {
                return
            }
            taskNameLabel.text = task.name
            if task.status == STATUS.doing {
                taskNameLabel.textColor = .green
            }else {
                taskNameLabel.textColor = .darkGray
            }
        }
    }
    @IBOutlet weak var taskNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
