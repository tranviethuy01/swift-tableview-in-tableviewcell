//
//  SimpleTableViewFixedCellHeightPresenter.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/3/22.
//

import Foundation
protocol SimpleTableViewFixedCellHeightPresenterProtocol: class {
    var view: SimpleTableViewFixedCellHeightViewProtocol? {get set}
    var wireFrame: SimpleTableViewFixedCellHeightWireFrameProtocol! {get set}
    func viewDidLoad()
}

class SimpleTableViewFixedCellHeightPresenter: SimpleTableViewFixedCellHeightPresenterProtocol {
    weak var view: SimpleTableViewFixedCellHeightViewProtocol?
    var wireFrame: SimpleTableViewFixedCellHeightWireFrameProtocol!
    
    func viewDidLoad() {
        //
    }
    
}
