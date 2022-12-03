//
//  DemoTableViewInsideTableViewPresenter.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation
protocol DemoTableViewInsideTableViewPresenterProtocol: class {
    var view: DemoTableViewInsideTableViewViewProtocol? {get set}
    var interactor: DemoTableViewInsideTableViewInteractorInputProtocol! {get set}
    var wireFrame: DemoTableViewInsideTableViewWireFrameProtocol! {get set}
    func viewDidLoad()
}

class DemoTableViewInsideTableViewPresenter: DemoTableViewInsideTableViewPresenterProtocol {
    weak var view: DemoTableViewInsideTableViewViewProtocol?
    var wireFrame: DemoTableViewInsideTableViewWireFrameProtocol!
    var interactor: DemoTableViewInsideTableViewInteractorInputProtocol!
    
    func viewDidLoad() {
        //
    }
    
}

extension DemoTableViewInsideTableViewPresenter: DemoTableViewInsideTableViewInteractorOutputProtocol {
    
}
