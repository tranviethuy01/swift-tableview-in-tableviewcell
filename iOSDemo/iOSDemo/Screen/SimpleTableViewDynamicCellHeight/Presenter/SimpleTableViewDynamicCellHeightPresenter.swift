//
//  SimpleTableViewDynamicCellHeightPresenter.swift
//  iOSDemo
//
//  Created by Viet Huy on 12/4/22.
//

import Foundation
protocol SimpleTableViewDynamicCellHeightPresenterProtocol: class {
    var view: SimpleTableViewDynamicCellHeightViewProtocol? {get set}
    var wireFrame: SimpleTableViewDynamicCellHeightWireFrameProtocol! {get set}
    func viewDidLoad()
}

class SimpleTableViewDynamicCellHeightPresenter: SimpleTableViewDynamicCellHeightPresenterProtocol {
    weak var view: SimpleTableViewDynamicCellHeightViewProtocol?
    var wireFrame: SimpleTableViewDynamicCellHeightWireFrameProtocol!
    
    func viewDidLoad() {
        //
    }
    
}
