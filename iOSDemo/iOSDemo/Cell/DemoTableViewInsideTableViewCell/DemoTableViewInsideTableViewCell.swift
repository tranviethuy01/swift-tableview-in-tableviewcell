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
    
    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        
        setupUIView()
    }
    
    private func setupUIView() {
        
        //setup tableView
        let nib = UINib(nibName: SimpleTableViewFixedCellHeightCell.getCellIdentifier(), bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: SimpleTableViewFixedCellHeightCell.getCellIdentifier())
        tableView.tableHeaderView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ViewService.screenSize().width, height: 0.1))
        tableView.tableFooterView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ViewService.screenSize().width, height: 0.1))
        tableView.sectionHeaderHeight = 0.1
        tableView.sectionFooterHeight = 0.1
        tableView.estimatedRowHeight = SimpleTableViewFixedCellHeightCell.getCellHeight()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupData(row: Int){
        self.row = row
        didSetupData()
    }
    
    private func didSetupData(){
        guard let row = self.row else {return}
        contentLbl.text = "\(row). This is a demo cell with tableview inside"
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

extension DemoTableViewInsideTableViewCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewFixedCellHeightCell.getCellIdentifier(), for: indexPath) as! SimpleTableViewFixedCellHeightCell
        cell.setupData(row: indexPath.row)
        return cell
    }
}
