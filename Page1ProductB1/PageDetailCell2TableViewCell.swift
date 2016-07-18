//
//  PageDetailCell2TableViewCell.swift
//  Page1ProductB1
//
//  Created by admin on 7/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageDetailCell2TableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: PageDetailCell2Cell0TableViewCell!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! PageDetailCell2Cell0TableViewCell
        return cell0
        */
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! PageDetailCell2Cell0TableViewCell
            
            return cell0
        } else {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            
            return cell1!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 65
        } else {
            return 35
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
