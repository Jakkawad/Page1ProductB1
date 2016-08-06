//
//  PageFilterProductViewController.swift
//  Page1ProductB1
//
//  Created by admin on 7/20/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageFilterProductViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {

    // MARK: Outlet
    
    @IBOutlet weak var txtPriceStart:UITextField!
    @IBOutlet weak var txtPriceEnd:UITextField!
    @IBOutlet weak var tableView:UITableView!
    
    // MARK: Action
    
    @IBAction func btnDone() {
        
        
        print("ArrayFilter = \(arrayFilterTitle)")
        print("Rating = \(rating)")
        print("Category = \(category)")
        print("PriceStart = \(priceStart)")
        print("PriceEnd = \(priceEnd)")
        
        self.dismissViewControllerAnimated(true, completion: nil)
        /*
        if((self.presentingViewController) != nil){
            self.dismissViewControllerAnimated(false, completion: nil)
            print("done")
        }
        */
    }
    
    // MARK: Array
    
    var arrayFilterTitle:String!
    var rating:[String]!
    var category:String!
    var priceStart:String!
    var priceEnd:String!
    
    // MARK UITableViewDelegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0")
            cell0?.detailTextLabel?.text = arrayFilterTitle
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1")
            cell1?.detailTextLabel?.text = category
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("tableCell2")
            var ratingText:String!
            ratingText = ""
            if(rating != nil){
                var i = 1
                for ratings in rating {
                    if(i == rating.count){
                    ratingText.appendContentsOf(ratings)
                    }else{
                    ratingText.appendContentsOf(ratings+",")
                    }
                    i += 1
                }
            }
            print(ratingText);
            cell2?.detailTextLabel?.text = ratingText
            return cell2!
        } else {
            let cell3 = tableView.dequeueReusableCellWithIdentifier("tableCell3") as! PageFilterProductCell3TableViewCell
            
            cell3.txtPriceStart.delegate = self
            cell3.txtPriceEnd.delegate = self
            priceStart = cell3.txtPriceStart.text
            priceEnd = cell3.txtPriceEnd.text
            
            return cell3
        }
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // Pass Data to FilterOption
    }
    
    // MARK: ViewController
    
    override func viewWillAppear(animated: Bool) {
        //tableView.reloadData()
        //print("viewWillAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        //print("viewWillDisappear")
    }
    
    override func viewDidAppear(animated: Bool) {
        /*
        if arrayFilterTitle == nil {
            print("Error")
        } else if arrayFilterTitle != nil {
            print("ArrayFilterTitle = \(arrayFilterTitle)")
            tableView.reloadData()
        }
        */
        /*
        if rating == nil {
            print("Rating Error")
        } else {
            print("Rating =\(rating)")
            tableView.reloadData()
        }
        */
        tableView.reloadData()
        //print("viewDidAppear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        txtPriceStart.delegate = self
        txtPriceEnd.delegate = self
        */
        print("viewDidLoad")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: UITextFiled    Delegates
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
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
