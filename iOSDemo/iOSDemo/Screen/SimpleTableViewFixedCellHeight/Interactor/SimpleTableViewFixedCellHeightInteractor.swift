//
//  SimpleTableViewFixedCellHeightInteractor.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation

protocol SimpleTableViewFixedCellHeightInteractorInputProtocol: class {
    var presenter: SimpleTableViewFixedCellHeightInteractorOutputProtocol? {get set}
    var remoteDataManager: SimpleTableViewFixedCellHeightRemoteDataManagerInputProtocol! {get set}
    
}
protocol SimpleTableViewFixedCellHeightInteractorOutputProtocol: class {
    
}

class SimpleTableViewFixedCellHeightInteractor: SimpleTableViewFixedCellHeightInteractorInputProtocol {
    weak var presenter: SimpleTableViewFixedCellHeightInteractorOutputProtocol?
    var remoteDataManager: SimpleTableViewFixedCellHeightRemoteDataManagerInputProtocol!
    
}

extension SimpleTableViewFixedCellHeightInteractor: SimpleTableViewFixedCellHeightRemoteDataManagerOutputProtocol {
    
}
