//
//  SimpleTableViewDynamicCellHeightViewController.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/4/22.
//

import Foundation
import UIKit
protocol SimpleTableViewDynamicCellHeightViewProtocol: AnyObject {
    var presenter: SimpleTableViewDynamicCellHeightPresenterProtocol! {get set}
}

class SimpleTableViewDynamicCellHeightViewController: ViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: SimpleTableViewDynamicCellHeightPresenterProtocol!
    override class func storyBoardId() -> String {
        return "SimpleTableViewDynamicCellHeight"
    }
    
    override class func storyBoardName() -> String {
        return "SimpleTableViewDynamicCellHeight"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIView()
        
        let backBarButtonItem = UIBarButtonItem.init(title: "Back", style: .done, target: self, action: #selector(backBtn_TouchUpInside))
        navigationItem.leftBarButtonItem = backBarButtonItem
        
    }
    
    private func setupUIView(){
        navigationItem.title = "Demo Simple TableView with Dynamic Cell Height"
        navigationItem.hidesBackButton = false
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.backgroundColor = .yellow
        
        //setup tableView
        let nib = UINib(nibName: SimpleTableViewDynamicCellHeightCell.getCellIdentifier(), bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: SimpleTableViewDynamicCellHeightCell.getCellIdentifier())
        tableView.tableHeaderView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ViewService.screenSize().width, height: 0.1))
        tableView.tableFooterView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ViewService.screenSize().width, height: 0.1))
        tableView.sectionHeaderHeight = 0.1
        tableView.sectionFooterHeight = 0.1
        tableView.estimatedRowHeight = SimpleTableViewDynamicCellHeightCell.getCellHeight()
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

extension SimpleTableViewDynamicCellHeightViewController: SimpleTableViewDynamicCellHeightViewProtocol {
    
}


extension SimpleTableViewDynamicCellHeightViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewDynamicCellHeightCell.getCellIdentifier(), for: indexPath) as! SimpleTableViewDynamicCellHeightCell
        cell.setupData(row: indexPath.row)
        return cell
    }
}
