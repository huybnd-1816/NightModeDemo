//
//  SecondViewController.swift
//  NightModeDemo
//
//  Created by nguyen.duc.huyb on 6/24/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    private func config() {
        navigationItem.title = "Second"
        setUpTheming()
        themeProvider.currentTheme = Defaults.getSwitchValue() ? AppTheme.dark : AppTheme.light
    }
}

extension SecondViewController: Themed {
    func applyTheme(_ theme: AppTheme) {
        view.backgroundColor = theme.backgroundColor
        titleLabel.textColor = theme.textColor
    }
}
