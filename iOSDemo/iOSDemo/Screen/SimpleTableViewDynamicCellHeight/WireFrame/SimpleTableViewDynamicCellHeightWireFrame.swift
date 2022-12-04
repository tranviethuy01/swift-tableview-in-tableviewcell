//
//  SimpleTableViewDynamicCellHeightWireFrame.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/4/22.
//

import Foundation
protocol SimpleTableViewDynamicCellHeightWireFrameProtocol: class {
    static func createSimpleTableViewDynamicCellHeightViewController() -> SimpleTableViewDynamicCellHeightViewController?
}

class SimpleTableViewDynamicCellHeightWireFrame: SimpleTableViewDynamicCellHeightWireFrameProtocol {
    static func createSimpleTableViewDynamicCellHeightViewController() -> SimpleTableViewDynamicCellHeightViewController? {
        if let vc = SimpleTableViewDynamicCellHeightViewController.initWithStoryBoard() {
            let presenter = SimpleTableViewDynamicCellHeightPresenter()
            let wireFrame = SimpleTableViewDynamicCellHeightWireFrame()
            presenter.wireFrame = wireFrame
            presenter.view = vc
            vc.presenter = presenter
            return vc
        }
        return nil
    }
}
