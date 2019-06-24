//
//  Array+.swift
//  NightModeDemo
//
//  Created by nguyen.duc.huyb on 6/24/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//


extension Array {
    /// Move the last element of the array to the beginning
    ///  - Returns: The element that was moved
    mutating func rotate() -> Element? {
        guard let lastElement = popLast() else {
            return nil
        }
        insert(lastElement, at: 0)
        return lastElement
    }
}
