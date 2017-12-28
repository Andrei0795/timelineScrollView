//
//  CustomTableViewController.swift
//  TimelineScroll
//
//  Created by Andrei Ionescu on 27/12/2017.
//  Copyright © 2017 Andrei Ionescu. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    fileprivate var numberOfRows: Int = 10

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.register(CustomTableCellTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 91
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear 
        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numberOfRows
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("CustomTableCellTableViewCell", owner: self, options: nil)?.first as! CustomTableCellTableViewCell
        cell.cellNumberLabel.text = String(indexPath.row + 1)
        switch indexPath.row {
        case 0:
            cell.cellImage.image = UIImage.init(named: "first")
            cell.titleLabel.text = "First Title"
        case numberOfRows - 1:
            cell.cellImage.image = UIImage.init(named: "last")
            cell.titleLabel.text = "Last Title"
        default:
            cell.cellImage.image = UIImage.init(named: "middle")
            cell.titleLabel.text = "Middle Title"
        }

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: self)
    }
 
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            //var vc = segue.destinationViewController as! ViewController
            //vc.data = "Data to pass"
            print("success")
        }
    }
 

}
