//
//  TodayController.swift
//  lunchManager
//
//  Created by SANGJUN AN on 02/03/2019.
//  Copyright © 2019 SANGJUN AN. All rights reserved.
//

import Foundation
import UIKit

class TodayController: UIViewController
{
    let dateFormatter = DateFormatter()
    
    func setTodayLabel(uiLabel : UILabel)
    {
        let today = Date()
        dateFormatter.dateStyle = .short
        print("1 : \(dateFormatter.string(from: today))")
        dateFormatter.dateStyle = .full
        print("2 : \(dateFormatter.string(from: today))")
        dateFormatter.dateStyle = .long
        print("3 : \(dateFormatter.string(from: today))")
        dateFormatter.dateStyle = .medium
        print("4 : \(dateFormatter.string(from: today))")
        dateFormatter.dateStyle = .none
        print("5 : \(dateFormatter.string(from: today))")
        
        print(today)
    }
}
