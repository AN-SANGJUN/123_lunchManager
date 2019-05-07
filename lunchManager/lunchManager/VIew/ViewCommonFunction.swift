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
            
            viewProp.view.layer.borderColor = viewProp.borderColor?.cgColor ?? viewProp.view.layer.borderColor
            viewProp.view.layer.borderWidth = viewProp.borderWidth ?? viewProp.view.layer.borderWidth
            viewProp.view.layer.cornerRadius = viewProp.cornerRadius ??  viewProp.view.layer.cornerRadius
        }
    }
}

struct viewCommonModel {
    
    var view: UIView
    var borderColor: UIColor?
    var cornerRadius: CGFloat?
    var borderWidth: CGFloat?
}
