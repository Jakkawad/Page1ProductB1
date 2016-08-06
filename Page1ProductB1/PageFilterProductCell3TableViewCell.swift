//
//  PageFilterProductCell3TableViewCell.swift
//  Page1ProductB1
//
//  Created by admin on 8/6/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageFilterProductCell3TableViewCell: UITableViewCell {

    @IBOutlet weak var txtPriceStart:UITextField!
    @IBOutlet weak var txtPriceEnd:UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //txtPriceStart.delegate = self
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
