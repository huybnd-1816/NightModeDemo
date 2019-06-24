//
//  AppTheme.swift
//  NightModeDemo
//
//  Created by nguyen.duc.huyb on 6/24/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

struct AppTheme {
    var statusBarStyle: UIStatusBarStyle
    var barBackgroundColor: UIColor
    var barForegroundColor: UIColor
    var backgroundColor: UIColor
    var textColor: UIColor
}

extension AppTheme {
    // Light Theme
    static let light = AppTheme (statusBarStyle: .default,
                                 barBackgroundColor: .white,
                                 barForegroundColor: .black,
                                 backgroundColor: .white,
                                 textColor: .darkText)
    
    // Dark Theme
    static let dark = AppTheme (statusBarStyle: .lightContent,
                                barBackgroundColor: UIColor(white: 0, alpha: 1),
                                barForegroundColor: .white,
                                backgroundColor: UIColor(white: 0.2, alpha: 1),
                                textColor: .lightText)
}
