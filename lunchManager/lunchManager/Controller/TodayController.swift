//
//  TodayController.swift
//  lunchManager
//
//  Created by SANGJUN AN on 02/03/2019.
//  Copyright © 2019 SANGJUN AN. All rights reserved.
//

import Foundation
import UIKit

class TodayController: UIViewController {
    
    let dateFormatter = DateFormatter()
    
    func setTodayLabel(uiLabel : UILabel) {
        let today = Date()
        dateFormatter.dateStyle = .short
        let day = String(dateFormatter.string(from: today).split(separator: "/")[1])
        uiLabel.text = day
    }
}
