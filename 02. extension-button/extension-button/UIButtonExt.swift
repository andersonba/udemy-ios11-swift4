//
//  UIColorExt.swift
//  extension-button
//
//  Created by Anderson de Oliveira on 07/04/18.
//  Copyright © 2018 Anderson de Oliveira. All rights reserved.
//

import UIKit

extension UIButton {
    func colorize() {
        let bgColor = self.backgroundColor
        UIView.animate(withDuration: 0.3, animations: {
            self.backgroundColor = .random()
        }) { (finished) in
            UIView.animate(withDuration: 0.3) {
                self.backgroundColor = bgColor
            }
        }
    }
    
    func wiggle() {
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.autoreverses = true
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x + 4, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position")
    }
    
    func dim() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0.7
        }) { (finished) in
            UIView.animate(withDuration: 0.3, animations: {
                self.alpha = 1
            })
        }
    }
}
