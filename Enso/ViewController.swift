//
//  ViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 9/17/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let logInButton = TWTRLogInButton { (session, error) -> Void in
            //
            if error != nil {
                println("\(error.localizedDescription)")
            } else {
                println("\(session)")
                println("Hi!")
            }
        }
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

