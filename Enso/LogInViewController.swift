//
//  LogInViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 11/10/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import TwitterKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let logInButton = TWTRLogInButton { (session, error) -> Void in
            //
            if error != nil {
                println("\(error.localizedDescription)")
            } else {
                println("\(session)")
                println("Hi!")
            }
        }
        logInButton.center = CGPoint(x: self.view.center.x, y: self.view.center.y - CGFloat(44))
        self.view.addSubview(logInButton)
        
        let loginView = FBLoginView()
        loginView.center = CGPoint(x: self.view.center.x, y: self.view.center.y + CGFloat(44))
        self.view.addSubview(loginView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
