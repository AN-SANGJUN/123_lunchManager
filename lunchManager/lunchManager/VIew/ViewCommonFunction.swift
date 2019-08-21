//
//  ViewCommonFunction.swift
//  lunchManager
//
//  Created by SANGJUN AN on 06/05/2019.
//  Copyright © 2019 SANGJUN AN. All rights reserved.
//

import Foundation
import UIKit

class ViewCommonFunction {
    // View에 대한 환경 Setting
    func setViewProperty(viewProperties: [viewCommonModel]) {
        for viewProp in viewProperties {
            let targetView = viewProp.view
            targetView.layer.borderColor = viewProp.borderColor?.cgColor ?? viewProp.view.layer.borderColor
            targetView.layer.borderWidth = viewProp.borderWidth ?? viewProp.view.layer.borderWidth
            targetView.layer.cornerRadius = viewProp.cornerRadius ??  viewProp.view.layer.cornerRadius
            
            if let gradientColors = viewProp.gradient {
                if(gradientColors.count > 1) {
                    let gradientSubView = UIView()
                    gradientSubView.frame = targetView.bounds
                    targetView.addSubview(gradientSubView)
                    // Add Gradient
                    let gradientLayer = CAGradientLayer()
                    gradientLayer.colors = gradientColors
                    gradientLayer.frame = gradientSubView.self.bounds
                    gradientSubView.layer.addSublayer(gradientLayer)
                    // gradientLayer의 형태를 targetView와 동일하게 설정한다.
                    gradientLayer.borderColor = viewProp.borderColor?.cgColor ?? viewProp.view.layer.borderColor
                    gradientLayer.borderWidth = viewProp.borderWidth ?? viewProp.view.layer.borderWidth
                    gradientLayer.cornerRadius = viewProp.cornerRadius ??  viewProp.view.layer.cornerRadius
                    targetView.sendSubviewToBack(gradientSubView)
                }
                else if(gradientColors.count == 1) {
                    targetView.backgroundColor = UIColor(cgColor: gradientColors[0])
                }
            }
        }
    }
}

// ViewCommonFunction의 setViewProperty를 사용하기 위한 Structure Model
struct viewCommonModel {
    var view: UIView
    var borderColor: UIColor?
    var cornerRadius: CGFloat?
    var borderWidth: CGFloat?
    var gradient: [CGColor]?

    init(view: UIView, borderColor: UIColor?, cornerRadius: CGFloat?, borderWidth: CGFloat?) {
        self.view = view
        self.borderColor = borderColor
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
    }
    init(view: UIView, borderColor: UIColor?, cornerRadius: CGFloat?, borderWidth: CGFloat?, gradient: [CGColor]?) {
        self.view = view
        self.borderColor = borderColor
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
        self.gradient = gradient
    }
}
