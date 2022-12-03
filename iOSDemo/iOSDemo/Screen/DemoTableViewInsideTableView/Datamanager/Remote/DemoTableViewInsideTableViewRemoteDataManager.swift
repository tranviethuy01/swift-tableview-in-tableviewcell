//
//  DemoTableViewInsideTableViewRemoteDataManager.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//


import Foundation
import ObjectMapper
protocol DemoTableViewInsideTableViewRemoteDataManagerInputProtocol: AnyObject {
    var remoteRequestHandler: DemoTableViewInsideTableViewRemoteDataManagerOutputProtocol? {get set}
    
}
protocol DemoTableViewInsideTableViewRemoteDataManagerOutputProtocol: AnyObject {
    
}

class DemoTableViewInsideTableViewRemoteDataManager: DemoTableViewInsideTableViewRemoteDataManagerInputProtocol {
    weak var remoteRequestHandler: DemoTableViewInsideTableViewRemoteDataManagerOutputProtocol?
    
}
    
