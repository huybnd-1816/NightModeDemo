//
//  NavigationController.swift
//  NightModeDemo
//
//  Created by nguyen.duc.huyb on 6/24/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    private var themedStatusBarStyle: UIStatusBarStyle?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return themedStatusBarStyle ?? super.preferredStatusBarStyle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTheming()
    }
}

extension NavigationController: Themed {
    func applyTheme(_ theme: AppTheme) {
        themedStatusBarStyle = theme.statusBarStyle
        setNeedsStatusBarAppearanceUpdate()
        
        navigationBar.barTintColor = theme.barBackgroundColor
        navigationBar.tintColor = theme.barForegroundColor
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: theme.barForegroundColor
        ]
    }
}

