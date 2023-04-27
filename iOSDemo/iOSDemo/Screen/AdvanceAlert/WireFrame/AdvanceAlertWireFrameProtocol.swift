//
//  AdvanceAlertWireFrameProtocol.swift
//  iOSDemo
//
//  Created by Viet Huy on 4/26/23.
//  Copyright © 2023 Tran Viet Huy. All rights reserved.

import Foundation
import UIKit
protocol AdvanceAlertWireFrameProtocol: AnyObject {
    static func createAdvanceAlertViewController(alertTitle: String?, alertContent: NSAttributedString?, confirmTitle: String?, confirmAction: (()->())?, imageName: String?, imageWidth: CGFloat?, imageHeight: CGFloat?, confirmBackgroundColor: UIColor?, confirmTintColor: UIColor? ) -> AdvanceAlertViewController?
}
