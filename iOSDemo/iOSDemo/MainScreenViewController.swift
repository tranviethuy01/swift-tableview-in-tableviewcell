//
//  ViewController.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import UIKit

class MainScreenViewController: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func demoTableViewInsideTableViewBtn_Tap(_ sender: Any) {
        showDemoTableViewInsideTableView()
    }
    
    private func showDemoTableViewInsideTableView() {
        if let vc = DemoTableViewInsideTableViewWireFrame.createDemoTableViewInsideTableViewViewController() {
            if let view = self as? MainScreenViewController {
                view.presentOverContext(vc, animated: true, completion: nil)
            }
        }
    }
}

