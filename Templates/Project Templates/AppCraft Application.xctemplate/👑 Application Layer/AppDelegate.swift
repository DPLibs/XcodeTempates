//
//  AppDelegate.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ AppCraft. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.setup(application)
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.setup(window)
        
        return true
    }

    // MARK: - Application configuration
    private func setup(_ application: UIApplication) {
        
    }
    
    // MARK: - Window configuration
    private func setup(_ window: UIWindow) {
        let vc = InitialAssembly.create()
        _ = InitialAssembly.configure(with: vc)

        self.window = window
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
    }

}
