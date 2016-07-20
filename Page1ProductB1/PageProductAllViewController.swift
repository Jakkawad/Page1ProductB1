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
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath) as! PageProductAllCell0CollectionViewCell
        cell0.imageViewProduct.setImageWithURL(NSURL(string: dummyImage("176x176"))!)
        return cell0
    }
    /*
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
    }
    */
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
