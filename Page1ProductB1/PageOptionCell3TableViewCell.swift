//
//  PageOptionCell3TableViewCell.swift
//  Page1ProductB1
//
//  Created by admin on 8/16/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageOptionCell3TableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var txtPrice:UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("TextField should return method called")
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("TextField should and editing method called")
        print(textField)
        return true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        txtPrice.keyboardType = UIKeyboardType.NumberPad
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}