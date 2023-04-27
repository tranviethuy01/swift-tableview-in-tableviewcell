//
//  DemoTableViewInsideTableViewInteractor.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation

protocol DemoTableViewInsideTableViewInteractorInputProtocol: AnyObject {
    var presenter: DemoTableViewInsideTableViewInteractorOutputProtocol? {get set}
    var remoteDataManager: DemoTableViewInsideTableViewRemoteDataManagerInputProtocol! {get set}
    
}
protocol DemoTableViewInsideTableViewInteractorOutputProtocol: AnyObject {
    
}

class DemoTableViewInsideTableViewInteractor: DemoTableViewInsideTableViewInteractorInputProtocol {
    weak var presenter: DemoTableViewInsideTableViewInteractorOutputProtocol?
    var remoteDataManager: DemoTableViewInsideTableViewRemoteDataManagerInputProtocol!
    
}

extension DemoTableViewInsideTableViewInteractor: DemoTableViewInsideTableViewRemoteDataManagerOutputProtocol {
    
}
