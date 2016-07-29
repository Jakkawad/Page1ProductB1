//
//  SortProductViewController.swift
//  Page1ProductB1
//
//  Created by admin on 7/22/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit


class SortProductViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView:UITableView!
    
    var arrayFilterTitle = ["สินค้าล่าสุด","ราคาต่ำ-สูง", "เรทติ้ง", "เรียงตามชื่อ A-Z", "เรียงตามชื่อ Z-A"]
   
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayFilterTitle.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
            return cell2!
        } else if indexPath.row == 3 {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3")
            return cell3!
        } else {
            let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4")
            return cell4!
        }
        */
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        cell0?.textLabel?.text = arrayFilterTitle[indexPath.row]
        return cell0!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //print(arrayFilterTitle[indexPath.row])
        let pageFilter = self.navigationController?.viewControllers[0] as! PageFilterProductViewController
        pageFilter.arrayFilterTitle = arrayFilterTitle[indexPath.row]
        //FilterOption(_filterSort: arrayFilterTitle[indexPath.row])
        
        navigationController?.popViewControllerAnimated(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
