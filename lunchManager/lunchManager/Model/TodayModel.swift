//
//  TodayModel.swift
//  lunchManager
//
//  Created by SANGJUN AN on 06/03/2019.
//  Copyright © 2019 SANGJUN AN. All rights reserved.
//

import Foundation

class TodayModel
{
    struct today : Codable
    {
        var jKey : Int = 0
        var email : String = ""
        var lunchDate : String = ""
        var partnerName : String = ""
        var placeNo : Int?
    }
}
