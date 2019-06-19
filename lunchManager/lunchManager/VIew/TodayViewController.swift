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
    @IBOutlet weak var headerView: UIView!
    
    let commonFunction = ViewCommonFunction()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setTodayLabel(uiLabel: todayCalLabel)
        doInit()
    }
    
    func doInit() {
        // ViewCommonModel은 ViewCommonFunction내 Struct참조.
        let gradientColor  = [UIColor(hexString: "#FF6F61")!.cgColor, UIColor(hexString: "#EDAA86")!.cgColor, UIColor(hexString: "#FF6F61")!.cgColor]
        var viewProperties: [viewCommonModel] = []
        viewProperties.append(viewCommonModel.init(view: cardImage, borderColor: UIColor(hexString: "#EA6676"), cornerRadius: 3, borderWidth: 0.2))
        viewProperties.append(viewCommonModel.init(view: personInfo, borderColor: UIColor(hexString: "#EA6676"), cornerRadius: 3, borderWidth: 0.2))
        viewProperties.append(viewCommonModel.init(view: headerView, borderColor: UIColor(hexString: "#EA6676"), cornerRadius: 3, borderWidth: 0.2, gradient: gradientColor))
        commonFunction.setViewProperty(viewProperties: viewProperties)
    }
}
