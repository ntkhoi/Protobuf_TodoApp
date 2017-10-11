//
//  TasksViewController.swift
//  Todo
//
//  Created by Khoi Nguyen on 10/11/17.
//  Copyright © 2017 Khoi Nguyen. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Service.shared.fetchTasks { (taskResponse) in
            if let tasks = taskResponse {
                self.tasks = tasks.tasks
                self.tableView.reloadData()
            }
        }
    }
}
extension TasksViewController: UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TaskCell.self)) as! TaskCell
        cell.task = tasks[indexPath.row]
        return cell
    }
}
