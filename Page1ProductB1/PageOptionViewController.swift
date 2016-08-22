//
//  PageOptionViewController.swift
//  Page1ProductB1
//
//  Created by admin on 8/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageOptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    /*
    @IBAction func unwindPageOption(segue: UIStoryboardSegue) {
        if let pageReuse = segue.sourceViewController as? PageOptionReuseViewController {
            let index = pageReuse.tableView.indexPathForSelectedRow
            let cell = pageReuse.tableView.cellForRowAtIndexPath(index!)
            let msg = cell?.textLabel?.text
            print(msg)
            colorSelected = msg
        } else {
            print("Erro")
        }
        /*
        if let pageReuse = segue.sourceViewController as? UITableViewController {
            let index = pageReuse.tableView.indexPathForSelectedRow
            let cell = pageReuse.tableView.cellForRowAtIndexPath(index!)
            let msg = cell?.textLabel?.text
            print(msg)
        } else {
            print("Error")
        }
        */
    }
    */
    @IBAction func unwindPageColor(segue: UIStoryboardSegue) {
        if let pageColor = segue.sourceViewController as? PageOptionColorViewController {
            let index = pageColor.tableView.indexPathForSelectedRow
            let cell = pageColor.tableView.cellForRowAtIndexPath(index!)
            let msg = cell?.textLabel?.text
            print(msg)
            colorSelected = msg
        } else {
            print("Error")
        }
    }
    
    @IBAction func unwindPageSize(segue: UIStoryboardSegue) {
        if let pageSize = segue.sourceViewController as? PageOptionSizeViewController {
            let index = pageSize.tableView.indexPathForSelectedRow
            let cell = pageSize.tableView.cellForRowAtIndexPath(index!)
            let msg = cell?.textLabel?.text
            print(msg)
            sizeSelected = msg
        } else {
            print("Error")
        }
    }
    
    var colorArray = []
    var sizeArray = []
    var colorSelected:String!
    var sizeSelected:String!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        return cell0!
        */
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            if colorSelected != nil {
                cell1?.detailTextLabel?.text = colorSelected
            }
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
            if sizeSelected != nil {
                cell2?.detailTextLabel?.text = sizeSelected
            }
            return cell2!
        } else if indexPath.row == 3 {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3")
            return cell3!
        } else {
            let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4")
            return cell4!
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 70
        } else {
            return 50
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        /*
        let PageOptionReuse = segue.destinationViewController as! PageOptionReuseViewController
        if segue.identifier == "ColorSegue" {
            colorArray = ["Red", "Black", "Blue", "Green"]
            PageOptionReuse.colorArray = colorArray
        } else if segue.identifier == "SizeSegue" {
            sizeArray = ["S", "M", "L", "XL"]
            PageOptionReuse.sizeArray = sizeArray
        } else {
            
        }
        */
        
        if segue.identifier == "ColorSegue" {
            print("Color")
            colorArray = ["Red", "Black", "Blue", "Green"]
            let PageOptionColor = segue.destinationViewController as! PageOptionColorViewController
            PageOptionColor.colorArray = colorArray
        } else if segue.identifier == "SizeSegue" {
            print("Size")
            let sizeArray = ["S", "M", "L", "XL"]
            let PageOptionSize = segue.destinationViewController as! PageOptionSizeViewController
            PageOptionSize.sizeArray = sizeArray

        } else {
            print("Error")
        }
    }
    

}
