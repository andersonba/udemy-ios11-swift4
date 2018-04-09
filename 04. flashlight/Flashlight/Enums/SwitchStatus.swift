//
//  SwitchStatus.swift
//  Flashlight
//
//  Created by Anderson de Oliveira on 09/04/18.
//  Copyright © 2018 Anderson de Oliveira. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
