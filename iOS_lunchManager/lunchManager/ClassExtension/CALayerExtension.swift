//
//  CALayerExtension.swift
//  lunchManager
//
//  Created by SANGJUN AN on 11/07/2019.
//  Copyright © 2019 SANGJUN AN. All rights reserved.
//

import UIKit

extension CALayer {
    func addBorder(thickness: CGFloat = 0.0, color: UIColor = UIColor.clear, edge: UIRectEdge?) {
        let border = CALayer()
        switch edge {
        case UIRectEdge.top:
            border.frame = CGRect.init(x: 0, y: 0, width: self.frame.width, height: thickness)
            break
        case UIRectEdge.bottom:
            border.frame = CGRect.init(x: 0, y: self.frame.height - thickness, width: self.frame.width, height: thickness)
            break
        case UIRectEdge.left:
            border.frame = CGRect.init(x: 0, y: 0, width: thickness, height: self.frame.height)
            break
        case UIRectEdge.right:
            border.frame = CGRect.init(x: self.frame.width - thickness, y: 0, width: thickness, height: self.frame.height)
            break
        default:
            break
        }
        border.backgroundColor = color.cgColor
        self.addSublayer(border)
    }
}
