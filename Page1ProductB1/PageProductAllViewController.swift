//
//  PageProductAllViewController.swift
//  Page1ProductB1
//
//  Created by admin on 7/20/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class PageProductAllViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView:UICollectionView!
    
    @IBOutlet var gridButton:UIButton!
    @IBOutlet var listButton:UIButton!
    
    var isGridView = true
    var changeLayoutDelay:Double = 0.3
    /*
    var gridFlowLayout = ProductsGridFlowLayout()
    
    var listFlowLayout = ProductsListFlowLayout()
    
    var isGridFlowLayoutUsed:Bool = false {
        didSet {
            listButton.alpha = (isGridFlowLayoutUsed == true) ? 0.9 : 1.0
            gridButton.alpha = (isGridFlowLayoutUsed == true) ? 1.0 : 0.9
        }
    }
    */
    @IBAction func gridButtonPressed() {
        // change to list layout
        print("Grid")
        
        if isGridView == true {
            print("Nothing")
        } else {
            print("Todo")
            isGridView = true
            
            collectionView?.performBatchUpdates({
                // load or setup for gridlayout
                //print("PerformBatchUpdates")
                
                }, completion: nil)
            collectionView?.reloadData()
            
            delay(changeLayoutDelay) {
                self.collectionView.reloadData()
            }
            
        }
        /*
        isGridView = true
        //print(isGridView)
        
        collectionView?.performBatchUpdates({
            // load or setup for gridlayout
            
            }, completion: nil)
        
        //collectionView?.reloadData()
        
        delay(0.3) {
            self.collectionView.reloadData()
        }
        */
        /*
        isGridFlowLayoutUsed = false
        
        UIView.animateWithDuration(0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(self.listFlowLayout, animated: true)
        }
        */
    }
    
    @IBAction func listButtonPressed() {
        // change to grid layout
        print("List")
        
        if isGridView == false {
            print("Nothing")
        } else {
            print("Todo")
            isGridView = false
            
            collectionView?.performBatchUpdates({
                // load or setup for gridlayout
                
                }, completion: nil)
            collectionView?.reloadData()
            
            delay(changeLayoutDelay) {
                self.collectionView.reloadData()
            }
            
        }
        
        /*
        isGridView = false
        //print(isGridView)
        
        collectionView?.performBatchUpdates({
            // load or setup for blocklayout
            
            }, completion: nil)
        
        ///collectionView?.reloadData()
        
        delay(0.3) {
            self.collectionView.reloadData()
        }
        */
        /*
        isGridFlowLayoutUsed = true
        
        UIView.animateWithDuration(0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(self.gridFlowLayout, animated: true)
        }
        */
    }
    
    @IBAction func btnFilter(sender: AnyObject) {
        //self.performSegueWithIdentifier("FilterSegue", sender:sender)
        print("Filter")
    }
    
    @IBAction func btnSort(sender: AnyObject) {
        print("Sort")
    }
    /*
    func setupInitalLayout() {
        isGridFlowLayoutUsed = true
        collectionView.collectionViewLayout = gridFlowLayout
    }
    */
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration:NSTimeInterval) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
    // MARK: SearchFilter
    
    @IBAction func searchFilter(sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        let newProduct = UIAlertAction(title: "สินค้าล่าสุด", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("New")
        })
        
        let lowhightProduct = UIAlertAction(title: "ราคาต่ำ - สูง", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Hight")
        })
        
        let hightlowProduct = UIAlertAction(title: "ราคาสูง - ต่ำ", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Low")
        })
        
        let azProduct = UIAlertAction(title: "เรียงตามชื่อ A - Z", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("A - Z")
        })
        
        let zaProduct = UIAlertAction(title: "เรียงตามชื่อ Z - A", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Z - A")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        optionMenu.addAction(newProduct)
        optionMenu.addAction(lowhightProduct)
        optionMenu.addAction(hightlowProduct)
        optionMenu.addAction(azProduct)
        optionMenu.addAction(zaProduct)
        optionMenu.addAction(cancelAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    // MARK: UICollectionViewDelegate
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        //var cell:UICollectionViewCell
        
        if isGridView == true {
            let gridCell = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath) as! PageProductAllCell0CollectionViewCell
            // some setup
            gridCell.imageViewProduct.setImageWithURL(NSURL(string: dummyImage("176x176"))!)
            //cell = gridCell
            return gridCell
        } else {
            let blockCell = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell1", forIndexPath: indexPath) as! PageProductAllCell1CollectionViewCell
            // some setup
            blockCell.imageViewProduct.setImageWithURL(NSURL(string: dummyImage("378x138"))!)
            //cell = blockCell
            return blockCell
        }
        
        /*
        let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath) as! PageProductAllCell0CollectionViewCell
        cell0.imageViewProduct.setImageWithURL(NSURL(string: dummyImage("176x176"))!)
        return cell0
        */
    }
    
    
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "FilterSegue" {
            let FilterVC = segue.destinationViewController as? PageFilterProductViewController
            print("FilterVC")
        }
    }
    */
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let screenSize:CGRect = UIScreen.mainScreen().bounds
        //print("ScreenSize = \(screenSize)")
        let screenWidth = screenSize.width
        //print("ScreenWidth = \(screenWidth)")
        let sw = (screenWidth/2)-11
        let ss = (screenWidth/2)+52
        //print("SW = \(sw)")
        //print("SS = \(ss)")
        //return CGSize(width: sw, height: ss)
        
        if isGridView == true {
            return CGSize(width: sw, height: ss)
        } else {
            return CGSize(width: 375, height: 240)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //print("CGRECT = \(CGRectGetWidth(collectionView!.frame))")
        
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
