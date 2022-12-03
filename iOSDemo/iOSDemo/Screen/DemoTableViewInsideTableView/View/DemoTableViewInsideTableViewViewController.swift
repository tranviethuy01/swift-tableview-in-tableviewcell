//
//  DemoTableViewInsideTableViewViewController.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation
import UIKit
protocol DemoTableViewInsideTableViewViewProtocol: class {
    var presenter: DemoTableViewInsideTableViewPresenterProtocol! {get set}
}

class DemoTableViewInsideTableViewViewController: ViewController {
    var presenter: DemoTableViewInsideTableViewPresenterProtocol!
    override class func storyBoardId() -> String {
        return "DemoTableViewInsideTableView"
    }
    
    override class func storyBoardName() -> String {
        return "DemoTableViewInsideTableView"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIView()
        let backBarButtonItem = UIBarButtonItem.init(title: "Back", style: .done, target: self, action: #selector(backBtn_TouchUpInside))
        navigationItem.leftBarButtonItem = backBarButtonItem
        
    }
    
    private func setupUIView(){
        navigationItem.title = "Demo TableView Inside TableView"
        navigationItem.hidesBackButton = false
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.backgroundColor = .yellow
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

extension DemoTableViewInsideTableViewViewController: DemoTableViewInsideTableViewViewProtocol {
    
}

