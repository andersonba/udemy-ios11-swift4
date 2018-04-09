//
//  ColorTransferDelegate.swift
//  Cloud Magic
//
//  Created by Anderson de Oliveira on 08/04/18.
//  Copyright © 2018 Anderson de Oliveira. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
