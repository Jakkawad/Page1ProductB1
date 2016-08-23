//
//  PageDetailCell0TableViewCell.swift
//  Page1ProductB1
//
//  Created by admin on 7/18/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import ImageSlideshow
import AlamofireImage

class PageDetailCell0TableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewProduct:UIImageView!
    
    @IBOutlet var slideshow: ImageSlideshow!
    var transitionDelegate: ZoomAnimatedTransitioningDelegate?
    var jsonArray:NSArray = ["https://images.unsplash.com/photo-1432679963831-2dab49187847?w=1080", "https://images.unsplash.com/photo-1447746249824-4be4e1b76d66?w=1080", "https://images.unsplash.com/photo-1463595373836-6e0b0a8ee322?w=1080"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        slideshow.backgroundColor = UIColor.whiteColor()
        slideshow.slideshowInterval = 5.0
        slideshow.pageControlPosition = PageControlPosition.UnderScrollView
        slideshow.pageControl.currentPageIndicatorTintColor = UIColor.lightGrayColor();
        slideshow.pageControl.pageIndicatorTintColor = UIColor.blackColor();

        slideshow.setImageInputs([AlamofireSource(urlString: "https://images.unsplash.com/photo-1432679963831-2dab49187847?w=1080")!, AlamofireSource(urlString: "https://images.unsplash.com/photo-1447746249824-4be4e1b76d66?w=1080")!, AlamofireSource(urlString: "https://images.unsplash.com/photo-1463595373836-6e0b0a8ee322?w=1080")!])
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(PageDetailCell0TableViewCell.click))
        slideshow.addGestureRecognizer(recognizer)
        // Initialization code
    }

    func click() {
        print("Click")
        let ctr = FullScreenSlideshowViewController()
        ctr.pageSelected = {(page: Int) in
            self.slideshow.setScrollViewPage(page, animated: false)
        }
        
        ctr.initialImageIndex = slideshow.scrollViewPage
        ctr.inputs = slideshow.images
        self.transitionDelegate = ZoomAnimatedTransitioningDelegate(slideshowView: slideshow, slideshowController: ctr)
        // Uncomment if you want disable the slide-to-dismiss feature
        // self.transitionDelegate?.slideToDismissEnabled = false
        ctr.transitioningDelegate = self.transitionDelegate
        //self.presentViewController(ctr, animated: true, completion: nil)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
