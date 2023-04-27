//
//  AdvanceAlertWireFrame.swift
//  iOSDemo
//
//  Created by Viet Huy on 4/26/23.
//  Copyright © 2023 Tran Viet Huy. All rights reserved.

import Foundation
import UIKit
class AdvanceAlertWireFrame: AdvanceAlertWireFrameProtocol {
    static func createAdvanceAlertViewController(alertTitle: String?, alertContent: NSAttributedString?, confirmTitle: String?, confirmAction: (() -> ())? = nil, imageName: String? = nil, imageWidth: CGFloat? = nil, imageHeight: CGFloat? = nil, confirmBackgroundColor: UIColor? = nil, confirmTintColor: UIColor? = nil) -> AdvanceAlertViewController? {
        if let vc = AdvanceAlertViewController.initWithStoryBoard(){
            vc.alertTitle = alertTitle
            vc.content = alertContent
            vc.confirmTitle = confirmTitle
            vc.confirmAction = confirmAction
            vc.imageName = imageName
            vc.customImageWidth = imageWidth
            vc.customImageHeight = imageHeight
            vc.confirmBackgroundColor = confirmBackgroundColor
            vc.confirmTintColor = confirmTintColor
            let presenter = AdvanceAlertPresenter()
            let wireFrame = AdvanceAlertWireFrame()
            vc.presenter = presenter
            presenter.wireFrame = wireFrame
            presenter.view = vc
            
            return vc
        }
        return nil
    }
    
    
}
