//
//  PageOptionColorViewController.swift
//  Page1ProductB1
//
//  Created by Jakkawad Chaiplee on 8/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageOptionColorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    var colorArray = []
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 1
        if colorArray.count == 0 {
            return 0
        } else {
            return colorArray.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
        cell0?.textLabel?.text = colorArray[indexPath.row] as! String
        return cell0!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //let pageOption = navigationController?.viewControllers[0] as! PageOptionViewController// as! PageOptionViewController
        //print(pageOption)
        //pageOption.colorSelected = colorArray[indexPath.row] as! String
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
