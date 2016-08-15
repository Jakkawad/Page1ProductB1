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
            let cell0 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell0", forIndexPath: indexPath)
            return cell0
        } else if indexPath.row == 1 {
            let cell1 = collectionView.dequeueReusableCellWithReuseIdentifier("colllectCell1", forIndexPath: indexPath)
            return cell1
        } else {
            let cell2 = collectionView.dequeueReusableCellWithReuseIdentifier("collectCell2", forIndexPath: indexPath)
            return cell2
        }
    }
    
    func configLayout() {
        let mainRect = UIScreen.mainScreen().bounds
        let mainWidth = mainRect.size.width
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = mainWidth/10
        flowLayout.itemSize = CGSizeMake(mainWidth/2, mainWidth/2)
        self.collectionView.collectionViewLayout = flowLayout
    }
    
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
