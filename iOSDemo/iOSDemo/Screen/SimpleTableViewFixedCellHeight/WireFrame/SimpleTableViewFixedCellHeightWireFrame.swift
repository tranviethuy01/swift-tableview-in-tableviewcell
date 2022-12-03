//
//  SimpleTableViewFixedCellHeightWireFrame.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation
protocol SimpleTableViewFixedCellHeightWireFrameProtocol: class {
    static func createSimpleTableViewFixedCellHeightViewController() -> SimpleTableViewFixedCellHeightViewController?
}

class SimpleTableViewFixedCellHeightWireFrame: SimpleTableViewFixedCellHeightWireFrameProtocol {
    static func createSimpleTableViewFixedCellHeightViewController() -> SimpleTableViewFixedCellHeightViewController? {
        if let vc = SimpleTableViewFixedCellHeightViewController.initWithStoryBoard() {
            let presenter = SimpleTableViewFixedCellHeightPresenter()
            let wireFrame = SimpleTableViewFixedCellHeightWireFrame()
            let interactor = SimpleTableViewFixedCellHeightInteractor()
            let remoteDataManager = SimpleTableViewFixedCellHeightRemoteDataManager()
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            presenter.view = vc
            interactor.presenter = presenter
            interactor.remoteDataManager = remoteDataManager
            remoteDataManager.remoteRequestHandler = interactor
            vc.presenter = presenter
            return vc
        }
        return nil
    }
}
