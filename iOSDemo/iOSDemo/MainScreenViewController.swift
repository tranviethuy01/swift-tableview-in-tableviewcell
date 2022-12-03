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
        if let vc = DemoTableViewInsideTableViewWireFrame.createDemoTableViewInsideTableViewViewController() , let view = self as? MainScreenViewController {
            if let navigationController = view.navigationController {
                navigationController.pushViewController(vc, animated: true)
            } else if let topMostVC = ViewService.findTopMostViewController() {
                let navigationController = UINavigationController.init(rootViewController: vc)
                topMostVC.customPresent(navigationController, animated: true)
            }
            
        }
    }
}

