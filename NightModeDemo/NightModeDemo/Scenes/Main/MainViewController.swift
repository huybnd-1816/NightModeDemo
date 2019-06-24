//
//  ViewController.swift
//  NightModeDemo
//
//  Created by nguyen.duc.huyb on 6/21/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var nextPageButton: UIButton!
    @IBOutlet private weak var changeThemeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    private func config() {
        navigationItem.title = "First"
        setUpTheming()
        changeThemeSwitch.setOn(Defaults.getSwitchValue(), animated: false)
        themeProvider.currentTheme = Defaults.getSwitchValue() ? AppTheme.dark : AppTheme.light
    }

    @IBAction func handleNextButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func switchButtonValueChanged(_ sender: UISwitch) {
        themeProvider.currentTheme = sender.isOn ? AppTheme.dark : AppTheme.light
        Defaults.save(sender.isOn)
    }
}

extension MainViewController: Themed {
    func applyTheme(_ theme: AppTheme) {
        view.backgroundColor = theme.backgroundColor
        titleLabel.textColor = theme.textColor
        nextPageButton.setTitleColor(theme.textColor, for: .normal)
    }
}
