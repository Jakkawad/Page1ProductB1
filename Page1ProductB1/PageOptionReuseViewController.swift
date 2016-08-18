//
//  PageOptionReuseViewController.swift
//  Page1ProductB1
//
//  Created by admin on 8/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageOptionReuseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    var reuseArray = []
    var colorArray = []
    var sizeArray = []
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /*
        if reuseArray.count == 0 {
            return 0
        } else {
            return reuseArray.count
        }
        */
        if colorArray.count != 0 {
            return colorArray.count
        } else if sizeArray.count != 0 {
            return sizeArray.count
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        //cell0?.textLabel?.text = reuseArray[indexPath.row] as? String
        if colorArray.count != 0 {
            cell0?.textLabel?.text = colorArray[indexPath.row] as! String
        } else if sizeArray.count != 0 {
            cell0?.textLabel?.text = sizeArray[indexPath.row] as! String
        } else {
            cell0?.textLabel?.text = "Error"
        }
        return cell0!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //let OptionVC = self.navigationController?.viewControllers[0] as! PageOptionViewController
        
        //navigationController?.popViewControllerAnimated(true)
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
