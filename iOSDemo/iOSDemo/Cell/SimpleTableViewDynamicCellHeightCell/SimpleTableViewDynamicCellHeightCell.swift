//
//  SimpleTableViewDynamicCellHeightCell.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/4/22.
//  Copyright © 2023 Tran Viet Huy. All rights reserved.

import UIKit
class SimpleTableViewDynamicCellHeightCell: UITableViewCell {
    private var row: Int!
    @IBOutlet weak var contentLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }
    
    func setupData(row: Int){
        self.row = row
        didSetupData()
    }
    
    private func didSetupData(){
        guard let row = self.row else {return}
        var contentStr = "\(row). This is a simple demo cell with Dynamic height. Change additionalContentStr to see how auto Self-sizing Table View Cells work"
        //this is a test string, change it to see change in cell and tableview with dynamic height constraint
        var additionalContentStr = ""
        //uncomment this to see change
        additionalContentStr.append(contentsOf: "This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height ")
        contentStr = "\(contentStr) \(additionalContentStr)"
        contentLbl.text = contentStr
        if (row % 2 == 0) {
            self.backgroundColor = .gray
        } else {
            self.backgroundColor = .darkGray
        }
        
    }
    
    class func getCellIdentifier() -> String {
        return "SimpleTableViewDynamicCellHeightCell"
    }
    
    class func getCellHeight() -> CGFloat {
        //just a test number, whether or not cell can auto resize
        return 200
    }
}
