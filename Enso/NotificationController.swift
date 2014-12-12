//
//  NotificationController.swift
//  Enso
//
//  Created by Leonardo Lee on 12/12/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class NotificationController {
    init () {
        self.notificationActions()
    }
    
    func notificationActions() {
        let sampleAction = UIMutableUserNotificationAction()
        sampleAction.title = "Sample Notification"
        sampleAction.identifier = "AWESOME_TEMP_ID"
        sampleAction.destructive = false
        sampleAction.activationMode = UIUserNotificationActivationMode.Background
        
        let sampleCategory = UIMutableUserNotificationCategory()
        sampleCategory.identifier = "AWESOME_TEMP_ID_CAT"
        sampleCategory.setActions([sampleAction], forContext: UIUserNotificationActionContext.Minimal) //For notifications popup
        sampleCategory.setActions([sampleAction], forContext: UIUserNotificationActionContext.Default) //For the badge and notifications pulldown
        
        var types = UIUserNotificationType.Alert | UIUserNotificationType.Sound
        var categories = NSSet(objects: sampleCategory)
        
        var settings = UIUserNotificationSettings(forTypes: types, categories: categories)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        
    }
    
    
    func postNotification() {
        
    }
    
    
}
