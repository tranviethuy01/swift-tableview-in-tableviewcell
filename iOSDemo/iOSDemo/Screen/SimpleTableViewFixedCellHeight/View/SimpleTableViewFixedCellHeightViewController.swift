//
//  SimpleTableViewFixedCellHeightViewController.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation
import UIKit
protocol SimpleTableViewFixedCellHeightViewProtocol: class {
    var presenter: SimpleTableViewFixedCellHeightPresenterProtocol! {get set}
}

class SimpleTableViewFixedCellHeightViewController: ViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: SimpleTableViewFixedCellHeightPresenterProtocol!
    override class func storyBoardId() -> String {
        return "SimpleTableViewFixedCellHeight"
    }
    
    override class func storyBoardName() -> String {
        return "SimpleTableViewFixedCellHeight"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIView()
        
        let backBarButtonItem = UIBarButtonItem.init(title: "Back", style: .done, target: self, action: #selector(backBtn_TouchUpInside))
        navigationItem.leftBarButtonItem = backBarButtonItem
        
    }
    
    private func setupUIView(){
        navigationItem.title = "Demo Simple TableView with Fixed Cell Height"
        navigationItem.hidesBackButton = false
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.backgroundColor = .yellow
        
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
    
    @objc func backBtn_TouchUpInside() {
        if let navigationController = navigationController {
            if navigationController.viewControllers.count > 1 {
                navigationController.popViewController(animated: true)
            }
            else {
                navigationController.dismiss(animated: true, completion: nil)
            }
        }
        else {
            navigationController?.dismiss(animated: true, completion: nil)
        }
    }
}

extension SimpleTableViewFixedCellHeightViewController: SimpleTableViewFixedCellHeightViewProtocol {
    
}


extension SimpleTableViewFixedCellHeightViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewFixedCellHeightCell.getCellIdentifier(), for: indexPath) as! SimpleTableViewFixedCellHeightCell
        cell.setupData(row: indexPath.row)
        return cell
    }
}
