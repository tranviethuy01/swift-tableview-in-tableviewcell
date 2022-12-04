//
//  SimpleTableViewDynamicCellHeightCell.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/4/22.
//

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
        var contentStr = "\(row). This is a simple demo cell with Dynamic height "
        //this is a test string, change it to see change in cell and tableview
        let additionalContentStr = ""
//        let additionalContentStr = "This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height This is a simple demo cell with Dynamic height "
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
