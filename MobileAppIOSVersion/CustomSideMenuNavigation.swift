//
//  CustomSideMenuNavigation.swift
//  MobileAppIOSVersion
//
//  Created by 김미주 on 10/07/2024.
//

import UIKit
import SideMenu

class CustomSideMenuNavigation: SideMenuNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.presentationStyle = .menuSlideIn
        self.presentationStyle.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        self.presentationStyle.presentingEndAlpha = 0.5
        self.menuWidth = min(view.frame.width, view.frame.height) * 0.7
    }

}
