//
//  FirstViewController.swift
//  lunchManager
//
//  Created by SANGJUN AN on 02/03/2019.
//  Copyright © 2019 SANGJUN AN. All rights reserved.
//

import UIKit

class TodayViewController: TodayController
{
    @IBOutlet weak var todayCalLabel: UILabel!
    @IBOutlet weak var personInfo: UIView!
    @IBOutlet weak var cardImage: UIImageView!
    
    let commonFunction = ViewCommonFunction()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        doInit()
    }
    
    func doInit() {
        
        // ViewCommonModel은 ViewCommonFunction내 Struct참조.
        print(personInfo.layer.borderWidth)
        print(personInfo.layer.borderColor)
        print(personInfo.layer.cornerRadius)
        var viewProperties: [viewCommonModel] = []
        viewProperties.append(viewCommonModel(view: cardImage, borderColor: UIColor.black, cornerRadius: 10, borderWidth: 3))
        viewProperties.append(viewCommonModel(view: personInfo, borderColor: nil, cornerRadius: nil, borderWidth: 3))
        commonFunction.setViewProperty(viewProperties: viewProperties)
    }
}
