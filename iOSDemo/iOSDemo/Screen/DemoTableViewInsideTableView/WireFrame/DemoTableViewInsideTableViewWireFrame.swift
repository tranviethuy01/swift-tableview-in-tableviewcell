//
//  DemoTableViewInsideTableViewWireFrame.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation
protocol DemoTableViewInsideTableViewWireFrameProtocol: class {
    static func createDemoTableViewInsideTableViewViewController() -> DemoTableViewInsideTableViewViewController?
}

class DemoTableViewInsideTableViewWireFrame: DemoTableViewInsideTableViewWireFrameProtocol {
    static func createDemoTableViewInsideTableViewViewController() -> DemoTableViewInsideTableViewViewController? {
        if let vc = DemoTableViewInsideTableViewViewController.initWithStoryBoard() {
            let presenter = DemoTableViewInsideTableViewPresenter()
            let wireFrame = DemoTableViewInsideTableViewWireFrame()
            let interactor = DemoTableViewInsideTableViewInteractor()
            let remoteDataManager = DemoTableViewInsideTableViewRemoteDataManager()
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
