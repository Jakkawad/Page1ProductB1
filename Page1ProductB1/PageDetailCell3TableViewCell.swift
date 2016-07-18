//
//  PageDetailCell3TableViewCell.swift
//  Page1ProductB1
//
//  Created by admin on 7/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class PageDetailCell3TableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! PageDetailCell3Cell0TableViewCell
            cell0.imageViewProfile.setImageWithURL(NSURL(string: dummyImage("50z50"))!)
            return cell0
        } else {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            
            return cell1!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 85
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
