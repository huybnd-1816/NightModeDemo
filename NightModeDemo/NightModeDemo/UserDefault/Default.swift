//
//  Default.swift
//  NightModeDemo
//
//  Created by nguyen.duc.huyb on 6/24/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import Foundation

struct Defaults {
    
    static let userSessionKey = "com.save.usersession"
    
    static func save(_ switchValue: Bool){
        UserDefaults.standard.set(switchValue, forKey: userSessionKey)
    }
    
    static func getSwitchValue()-> Bool {
        return UserDefaults.standard.value(forKey: userSessionKey) as? Bool ?? false
    }
    
    static func clearUserData(){
        UserDefaults.standard.removeObject(forKey: userSessionKey)
    }
}
