//
//  PageDetailCell4TableViewCell.swift
//  Page1ProductB1
//
//  Created by admin on 7/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import MapleBacon

class PageDetailCell4TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView:UICollectionView!
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        /*
        let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath) as! PageDetailCell4CollectionViewCell
        cell0.imageViewLogo.setImageWithURL(NSURL(string: dummyImage("100x100"))!)
        return cell0
        */
        if indexPath.row == 0 {
            let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath) as! PageDetailCell0CollectionViewCell
            cell0.imageViewLogo.setImageWithURL(NSURL(string: dummyImage("100x100"))!)
            return cell0
        } else if indexPath.row == 1 {
            let cell1 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell1", forIndexPath: indexPath) as! PageDetailCell1CollectionViewCell
            cell1.imageViewLogo.setImageWithURL(NSURL(string: dummyImage("100x100"))!)
            return cell1
        } else {
            let cell2 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell2", forIndexPath: indexPath) as! PageDetailCell2CollectionViewCell
            cell2.imageViewLogo.setImageWithURL(NSURL(string: dummyImage("100x100"))!)
            return cell2
        }
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let screenSize:CGRect = UIScreen.mainScreen().bounds
        //print("ScreenSize = \(screenSize)")
        let screenWidth = screenSize.width
        //print("ScreenWidth = \(screenWidth)")
        //print("ItemSize = \((screenWidth/3)-6)")
        return CGSize(width: (screenWidth/3)-6, height: (screenWidth/3)-6)
    }
    
    /*
    func configLayout() {
        let mainRect = UIScreen.mainScreen().bounds
        let mainWidth = mainRect.size.width
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = mainWidth/10
        flowLayout.itemSize = CGSizeMake(mainWidth/2, mainWidth/2)
        self.collectionView.collectionViewLayout = flowLayout
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //configLayout()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
