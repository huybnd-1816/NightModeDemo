//
//  AppThemeProvider.swift
//  NightModeDemo
//
//  Created by nguyen.duc.huyb on 6/24/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class AppThemeProvider: ThemeProvider {
    static let shared = AppThemeProvider()
    
    private var theme: SubscribableValue<AppTheme>
    private var availableThemes: [AppTheme] = [.light, .dark]
    
    var currentTheme: AppTheme {
        get {
            return theme.value
        }
        set {
            setNewTheme(newValue)
        }
    }
    
    private init() {
        theme = SubscribableValue<AppTheme>(value: .light)
    }
    
    private func setNewTheme(_ newTheme: AppTheme) {
        let window = UIApplication.shared.delegate!.window!!
        UIView.transition(
            with: window,
            duration: 0.3,
            options: [.transitionCrossDissolve],
            animations: {
                self.theme.value = newTheme
        },
            completion: nil
        )
    }
    
    func subscribeToChanges(_ object: AnyObject, handler: @escaping (AppTheme) -> Void) {
        theme.subscribe(object, using: handler)
    }
    
    func nextTheme() {
        guard let nextTheme = availableThemes.rotate() else {
            return
        }
        currentTheme = nextTheme
    }
}

extension Themed where Self: AnyObject {
    var themeProvider: AppThemeProvider {
        return AppThemeProvider.shared
    }
}
