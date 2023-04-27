//
//  AdvanceAlertPresenterProtocol.swift
//  iOSDemo
//
//  Created by Viet Huy on 4/26/23.
//  Copyright © 2023 Tran Viet Huy. All rights reserved.

import Foundation

protocol AdvanceAlertPresenterProtocol: AnyObject {
    var view: AdvanceAlertViewProtocol? {get set}
    var wireFrame: AdvanceAlertWireFrameProtocol? {get set}
}
