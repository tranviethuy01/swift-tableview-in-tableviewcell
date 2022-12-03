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
        
    }
}

extension DemoTableViewInsideTableViewViewController: DemoTableViewInsideTableViewViewProtocol {
    
}

