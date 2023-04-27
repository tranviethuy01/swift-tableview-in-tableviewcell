//
//  AdvanceAlertViewController.swift
//  iOSDemo
//
//  Created by Viet Huy on 4/26/23.
//  Copyright © 2023 Tran Viet Huy. All rights reserved.

import UIKit

class AdvanceAlertViewController: ViewController {

    @IBOutlet weak var alertImageViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var alertImageViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var alertImageView: UIImageView!
    @IBOutlet weak var cancelView: UIView!
    @IBOutlet weak var wrapperView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    @IBOutlet weak var confirmBtn: UIButton!
    // MARK: - Properties
    var alertTitle: String?
    var content: NSAttributedString?
    var confirmTitle: String?
    var confirmAction: (()->())?
    var presenter: AdvanceAlertPresenterProtocol?
    var imageName: String?
    var customImageHeight: CGFloat?
    var customImageWidth: CGFloat?
    var confirmBackgroundColor: UIColor?
    var confirmTintColor: UIColor?
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        confirmBtn.setTitleColor(UIColor.init(0xFFFFFF), for: .normal)
        confirmBtn.backgroundColor = UIColor.init(0xF7001E)
        
        // Do any additional setup after loading the view.
        wrapperView.layer.cornerRadius = 10
        wrapperView.layer.masksToBounds = true
        
        var titleStr = ""
        if let title = alertTitle {
            titleStr = title
        }
        titleLbl.text = titleStr
        contentLbl.text = ""
        contentLbl.attributedText = content

        var confirmStr = ""
        if let confirm = confirmTitle {
            confirmStr = confirm
        }
        confirmBtn.setTitle(confirmStr, for: .normal)
        confirmBtn.layer.cornerRadius = 10
        confirmBtn.layer.masksToBounds = true
        if let tintColor = confirmTintColor {
            confirmBtn.setTitleColor(tintColor, for: .normal)
        }
        if let backgroundColor = confirmBackgroundColor {
            confirmBtn.backgroundColor = backgroundColor
        }
        
        if let imageName = imageName {
            alertImageView.image = UIImage.init(named: imageName)
        }
        if let width = customImageWidth, let height = customImageHeight {
            alertImageViewWidthConstraint.constant = width
            alertImageViewHeightConstraint.constant = height
        }
        else {
            alertImageViewWidthConstraint.constant = 0
            alertImageViewHeightConstraint.constant = 0
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override class func storyBoardName() -> String {
        return "AdvanceAlert"
    }
    
    override class func storyBoardId() -> String {
        return "AdvanceAlertViewController"
    }
    
    // MARK: - IBActions
    @IBAction func confirmBtn_TouchUpInside(_ sender: Any) {
//        CheatingCounterService.shared.getMotionSensor()
        dismiss(animated: true) {[weak self] in
            if let weakSelf = self, let confirmAction = weakSelf.confirmAction {
                confirmAction()
            }
        }
    }
    @IBAction func cancelView_Tap(_ sender: Any) {
//        CheatingCounterService.shared.getMotionSensor()
//        dismiss(animated: true, completion: nil)
    }

}

extension AdvanceAlertViewController: AdvanceAlertViewProtocol {
    
}
