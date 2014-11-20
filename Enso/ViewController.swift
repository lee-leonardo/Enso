//
//  ViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/17/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var background : JMBackgroundCameraView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        background = JMBackgroundCameraView(frame: self.view.frame, positionDevice: DevicePositon.Back, blur: UIBlurEffectStyle.Light)
        self.view.addSubview(background)
    
    }
    
    override func viewWillAppear(animated: Bool) {
    }
}

