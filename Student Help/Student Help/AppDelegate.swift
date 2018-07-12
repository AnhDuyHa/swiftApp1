//
//  AppDelegate.swift
//  Student Help
//
//  Created by AnhDuy Ha on 29/3/18.
//  Copyright © 2018 AnhDuy Ha. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        sleep(1); //LaunchScreen time
        // Override point for customization after application launch.
        
        //fetchData
        if let saveHomework = fetchHomeworkData() {
            list = saveHomework
        }else {
            list = ["some example - May 20, 2018"] //example item
        }
        
        //fetchData
        if let saveAssessment = fetchAssessmentData() {
            myAssessment = saveAssessment
        }else {
            myAssessment = ["some example - May 20, 2018", "IST app - May 20, 2018"] //example items
        }
      
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        
        //save homework when app enter background
        saveHomeworkData(list: list)
        
        //save assessment when app enter background
        saveAssessmentData(myAssessment: myAssessment)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        
        //save homework when app terminate/closed
        saveHomeworkData(list: list)
        
        //save assessment when app terminate/closed
        saveAssessmentData(myAssessment: myAssessment)
    }


}

