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
    
    var arrayRating:[String] = ["All", "1", "2", "3", "4", "5"]
    var arrayRated = [String]()
    //var selectedRating = ["nil"]
    
    
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
            /*
            if cell0?.accessoryType == UITableViewCellAccessoryType.Checkmark {
                cell0?.accessoryType = UITableViewCellAccessoryType.None
                print("NONE")
            } else {
                cell0?.accessoryType = UITableViewCellAccessoryType.Checkmark
                print("CHECK")
            }
            */
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
        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        //selectedCell.contentView.backgroundColor = UIColor.whiteColor()
        selectedCell.selectionStyle = UITableViewCellSelectionStyle.None
        //print(indexPath)
        let pageFilter = self.navigationController?.viewControllers[0] as! PageFilterProductViewController
        if arrayRating[indexPath.row] == "All" {
            print("Select All")
            let selectAll = ["All"]
            //arrayRated.append(arrayRating[indexPath.row])
            arrayRated = selectAll
            print("ArrayRated = \(arrayRated)")
            pageFilter.rating = arrayRated
            navigationController?.popViewControllerAnimated(true)
        } else {
            print("Number Rating")
            arrayRated.append(arrayRating[indexPath.row])
            print("ArrayRated = \(arrayRated)")
            pageFilter.rating = arrayRated
        }
        
        
        // MARK: Pass Data
        /*
        let pageFilter = self.navigationController?.viewControllers[0] as! PageFilterProductViewController
        //pageFilter.rating = arrayRating[indexPath.row]
        //var selectedRating = arrayRating[indexPath.row]
        //selectedRating = arrayRating[indexPath.row]
        //arrayRated.append(selectedRating)
        arrayRated.append(arrayRating[indexPath.row])
        print("ArrayRated = \(arrayRated)")
        pageFilter.rating = arrayRated
        //print(arrayRated)
        */
        
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("Deselect = \(arrayRating[indexPath.row])")
        if let indexValue = arrayRated.indexOf(arrayRating[indexPath.row]) {
            arrayRated.removeAtIndex(indexValue)
        }
        //arrayRated.removeAtIndex()
        print("ArrayRated = \(arrayRated)")
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
