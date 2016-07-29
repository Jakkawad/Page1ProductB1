//
//  PageRatingViewController.swift
//  Page1ProductB1
//
//  Created by admin on 7/22/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageRatingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func returnRating() {
        
        navigationController?.popViewControllerAnimated(true)
    }
    
    var arrayRating = ["All", "1", "2", "3", "4", "5"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 6
        return arrayRating.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            //print(arrayRating[indexPath.row])
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            //print(arrayRating[indexPath.row])
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
            //print(arrayRating[indexPath.row])
            return cell2!
        } else if indexPath.row == 3 {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3")
            //print(arrayRating[indexPath.row])
            return cell3!
        } else if indexPath.row == 4 {
            let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4")
            //print(arrayRating[indexPath.row])
            return cell4!
        } else {
            let cell5 = tableView.dequeueReusableCellWithIdentifier("tableCell5")
            //print(arrayRating[indexPath.row])
            return cell5!
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        let pageFilter = self.navigationController?.viewControllers[0] as! PageFilterProductViewController
        pageFilter.rating = arrayRating[indexPath.row]
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.allowsMultipleSelection = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
