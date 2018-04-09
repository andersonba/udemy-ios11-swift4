//
//  UIColorExt.swift
//  extension-button
//
//  Created by Anderson de Oliveira on 07/04/18.
//  Copyright © 2018 Anderson de Oliveira. All rights reserved.
//

import UIKit

extension UIColor {
    static func random(alpha: CGFloat = 1) -> UIColor {
        func getRandom() -> CGFloat {
            return CGFloat(arc4random()) / CGFloat(UInt32.max)
        }
        
        return UIColor(red: getRandom(),
                       green: getRandom(),
                       blue: getRandom(),
                       alpha: alpha)
    }
}
