//
//  LogInViewController.swift
//  Enso
//
//  Created by Leonardo Lee on 11/10/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import TwitterKit

class LogInViewController: UIViewController, FBLoginViewDelegate {
    
    @IBOutlet weak var twitterImage: UIImageView!
    @IBOutlet weak var twitterUN: UILabel!
    @IBOutlet weak var facebookImage: UIImageView!
    @IBOutlet weak var facebookUN: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.twitterImage.image = UIImage(named: "Twitter_logo_blue")
        self.twitterUN.text = "Placeholder"
        self.facebookUN.text = "Placeholder"
        
        let logInButton = TWTRLogInButton { (session, error) -> Void in
            //
            if error != nil {
                println("Error: \(error.localizedDescription)")
            } else {
                println("\(session)")
                println("Hi!")
            }
        }
        logInButton.center = CGPoint(x: self.view.center.x, y: self.view.center.y - CGFloat(44))
        self.view.addSubview(logInButton)
        
        let loginView = FBLoginView()
        loginView.center = CGPoint(x: self.view.center.x, y: self.view.center.y + CGFloat(44))
        loginView.delegate = self
        self.view.addSubview(loginView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Facebook Delegate
    func loginView(loginView: FBLoginView!, handleError error: NSError!) {
        if error != nil {
            println("\(error.localizedDescription)")
        }
    }
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        println("LoginFetchedUser")
        self.facebookUN.text = "\(user.first_name) \(user.last_name)"
//        self.facebookImage.image = user.
    }
    
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        println("Showing LoggedInUser")
    }
    
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        println("Showing LoggedOutUser")
        self.facebookUN.text = "Please log in!"
    }
    
    //MARK: Twitter Delegate

}
