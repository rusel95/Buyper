//
//  AppDelegate.swift
//
//  Copyright © 2016 Yalantis. All rights reserved.
//

import UIKit
import Core
import Swinject

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let container = Container()
    
    var window: UIWindow?
    private var applicationFlowCoordinator: ApplicationFlowCoordinator!
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        NotificationsService.shared.didFinishLaunching(application: application, launchOptions: launchOptions)
        applicationFlowCoordinator = ApplicationFlowCoordinator(window: window!)
        applicationFlowCoordinator.execute()
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        applicationFlowCoordinator.applicationDidEnterBackground(application)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        applicationFlowCoordinator.applicationWillEnterForeground(application)
    }
    
}
