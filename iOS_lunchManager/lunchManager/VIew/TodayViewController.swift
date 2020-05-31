//
//  FirstViewController.swift
//  lunchManager
//
//  Created by SANGJUN AN on 02/03/2019.
//  Copyright © 2019 SANGJUN AN. All rights reserved.
//

import UIKit

class TodayViewController: TodayController {
    @IBOutlet weak var todayCalLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var headView: UIView!
    @IBOutlet weak var bodyView: UIView!
    @IBOutlet weak var selectLunchBtn: UIButton!
    @IBOutlet weak var partnerLabel: UILabel!
    
    let commonFunction = ViewCommonFunction()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setTodayLabel(uiLabel: todayCalLabel)
        doInit()
    }

    func doInit() {
        // ViewCommonModel은 ViewCommonFunction내 Struct참조.
        // let gradientColor  = [UIColor(hexString: "#def2f1")!.cgColor]
        // let bodyGradientColor = [UIColor(hexString: "#2b7a78")!.cgColor]
        let headGradientColor = [UIColor(hexString: "#5faeb6")!.cgColor]
        let whiteColor = [UIColor(hexString: "#ffffff")!.cgColor]
        // todayCalLabel.layer.borderWidth
        partnerLabel.layer.addBorder(thickness: 3, color: UIColor.black, edge: UIRectEdge.top)
        partnerLabel.layer.addBorder(thickness: 3, color: UIColor.blue, edge: UIRectEdge.bottom)
        partnerLabel.layer.addBorder(thickness: 3, color: UIColor.green, edge: UIRectEdge.left)
        partnerLabel.layer.addBorder(thickness: 3, color: UIColor.white, edge: UIRectEdge.right)
        selectLunchBtn.layer.borderWidth = 3
        selectLunchBtn.layer.borderColor = UIColor(hexString: "#ffffff")?.cgColor
        selectLunchBtn.layer.cornerRadius = 10
        var viewProperties: [viewCommonModel] = []
        viewProperties.append(viewCommonModel.init(view: todayCalLabel, borderColor: UIColor.white, cornerRadius: 15, borderWidth: 0, gradient: [UIColor.clear.cgColor]))
        viewProperties.append(viewCommonModel.init(view: headView, borderColor: UIColor(hexString: "#EA6676"), cornerRadius: 15, borderWidth: 0.2, gradient: headGradientColor))
        viewProperties.append(viewCommonModel.init(view: bodyView, borderColor: UIColor(hexString: "#EA6676"), cornerRadius: 15, borderWidth: 0.2, gradient: headGradientColor))
        viewProperties.append(viewCommonModel.init(view: backgroundView, borderColor: UIColor(hexString: "#EA6676"), cornerRadius: 3, borderWidth: 0.2, gradient: whiteColor))
        commonFunction.setViewProperty(viewProperties: viewProperties)
    }
}
