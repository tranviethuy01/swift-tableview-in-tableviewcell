//
//  DemoTableViewInsideTableViewCell.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import UIKit
class DemoTableViewInsideTableViewCell: UITableViewCell {
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
        contentLbl.text = "\(row). This is a test cell"
        if (row % 2 == 0) {
            self.backgroundColor = .gray
        } else {
            self.backgroundColor = .darkGray
        }
        
    }
    
    class func getCellIdentifier() -> String {
        return "DemoTableViewInsideTableViewCell"
    }
    
    class func getCellHeight() -> CGFloat {
        //just a test number, whether or not cell can auto resize
        return 200
    }
}
