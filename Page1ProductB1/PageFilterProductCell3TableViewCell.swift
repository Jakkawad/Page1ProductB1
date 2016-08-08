//
//  PageFilterProductCell3TableViewCell.swift
//  Page1ProductB1
//
//  Created by admin on 8/6/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class PageFilterProductCell3TableViewCell: UITableViewCell,UITextFieldDelegate {

    @IBOutlet weak var txtPriceStart:UITextField!
    @IBOutlet weak var txtPriceEnd:UITextField!
    
    
    // MARK: 
    
    //var dataString:String!
    var priceStart:String!
    var priceEnd:String!
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("TextField should and editing method called")
        //print(txtPriceStart)
        //print(txtPriceEnd)
        //dataString = txtPriceStart.text
        //print(dataString)
        priceStart = txtPriceStart.text
        priceEnd = txtPriceEnd.text
        print("PriceStart = \(priceStart)")
        print("PriceEnd = \(priceEnd)")
        
        return true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //txtPriceStart.delegate = self
        //txtPriceEnd.delegate = self
        // Initialization code
    }

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
