//
//  PageDetailViewController.swift
//  Page1ProductB1
//
//  Created by admin on 7/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class PageDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func showActionSheet(sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        let reportProduct = UIAlertAction(title: "รายงานสินค้านี้", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Delete")
        })
        
        let sharedProduct = UIAlertAction(title: "แชร์", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Shared")
        })
        
        let helpCenter = UIAlertAction(title: "ศูนย์ช่วยเหลือ", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Help")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        optionMenu.addAction(reportProduct)
        optionMenu.addAction(sharedProduct)
        optionMenu.addAction(helpCenter)
        optionMenu.addAction(cancelAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 7
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 2
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 1
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        } else if section == 5 {
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! PageDetailCell0TableViewCell
            cell0.imageViewProduct.setImageWithURL(NSURL(string: dummyImage("100x100"))!)
            return cell0
        } else if indexPath.section == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as! PageDetailCell1TableViewCell
            
            return cell1
        } else if indexPath.section == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2") as! PageDetailCell2TableViewCell
            
            return cell2
        } else if indexPath.section == 3 {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3") as! PageDetailCell3TableViewCell
            
            return cell3
        } else if indexPath.section == 4 {
            let cell4 = tableView.dequeueReusableCellWithIdentifier("tableCell4") as! PageDetailCell4TableViewCell
            
            return cell4
        } else if indexPath.section == 5 {
            if indexPath.row == 0 {
                let cell5 = tableView.dequeueReusableCellWithIdentifier("tableCell5") as! PageDetailCell5TableViewCell
                cell5.imageViewProfile.setImageWithURL(NSURL(string: dummyImage("50x50"))!)
                return cell5
            } else if indexPath.row == 1 {
                let cell6 = tableView.dequeueReusableCellWithIdentifier("tableCell7")
                
                return cell6!
            } else {
                let cell7 = tableView.dequeueReusableCellWithIdentifier("tableCell8")
                
                return cell7!
            }
        } else {
            let cell6 = tableView.dequeueReusableCellWithIdentifier("tableCell6") as! PageDetailCell6TableViewCell
            
            return cell6
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 240
        } else if indexPath.section == 1 {
            return 130
        } else if indexPath.section == 2 {
            return 100
        } else if indexPath.section == 3 {
            return 120
        } else if indexPath.section == 4 {
            return 130
        } else if indexPath.section == 5 {
            if indexPath.row == 0 {
                return 100
            } else if indexPath.row == 1 {
                return 44
            } else {
                return 44
            }
        } else {
            return 224
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.min
        }
        return 20
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return ""
        } else if section == 1 {
            return ""
        } else if section == 2 {
            return "รายละเอียดสินค้า"
        } else if section == 3 {
            return "รีวิวสินค้า"
        } else if section == 4 {
            return ""
        } else if section == 5 {
            return "จัดจำหน่ายโดย"
        } else {
            return "สินค้าที่น่าใจของร้านนี้"
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
