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
        dateFormatter.dateFormat = "yyyy년 MM월 dd일 (eeeee)"
        dateFormatter.locale = Locale(identifier: "ko")
        let day = "\t\(String(dateFormatter.string(from: today)))"
        uiLabel.text = day
    }
}
