//
//  DemoTableViewInsideTableViewInteractor.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation

protocol DemoTableViewInsideTableViewInteractorInputProtocol: class {
    var presenter: DemoTableViewInsideTableViewInteractorOutputProtocol? {get set}
    var remoteDataManager: DemoTableViewInsideTableViewRemoteDataManagerInputProtocol! {get set}
    
}
protocol DemoTableViewInsideTableViewInteractorOutputProtocol: class {
    
}

class DemoTableViewInsideTableViewInteractor: DemoTableViewInsideTableViewInteractorInputProtocol {
    weak var presenter: DemoTableViewInsideTableViewInteractorOutputProtocol?
    var remoteDataManager: DemoTableViewInsideTableViewRemoteDataManagerInputProtocol!
    
}

extension DemoTableViewInsideTableViewInteractor: DemoTableViewInsideTableViewRemoteDataManagerOutputProtocol {
    
}
