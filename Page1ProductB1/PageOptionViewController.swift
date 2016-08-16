//
//  PageOptionViewController.swift
//  Page1ProductB1
//
//  Created by admin on 7/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class PageOptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    var dataAttay = [String]()
    var color:String!
    var zxc = "ASDF"
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! PageOptionCell0TableViewCell
            cell0.imageViewProduct.setImageWithURL(NSURL(string: dummyImage("50x50"))!)
            return cell0
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
            
            return cell2!
        } else if indexPath.row == 3 {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3") as! PageOptionCell3TableViewCell
            
            return cell3
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
        
        let OptionVC = segue.destinationViewController as! PageOptionColorViewController
        if segue.identifier == "ColorSegue" {
            print("ColorSegue")
            dataAttay = ["Red", "Black", "Green"]
            //print(dataAttay)
            OptionVC.colorArray = dataAttay
            //print(OptionVC.colorArray)
        } else if segue.identifier == "SizeSegue" {
            print("SizeSegue")
            dataAttay = ["S", "M", "XL", "XXL", "XLLL"]
            OptionVC.colorArray = dataAttay
        } else {
            print("Nothing Segue")
        }
    }
    

}
