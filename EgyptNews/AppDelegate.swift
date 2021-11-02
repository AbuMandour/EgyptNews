//
//  AppDelegate.swift
//  EgyptNews
//
//  Created by Muhammad Abumandour on 24/10/2021.
//

import UIKit
import MvvmWhite

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window:UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Settings.defaultImageUrl = "https://via.placeholder.com/40x40.png?text=Image+is+removed"
        window = UIWindow()
        let viewController = UIStoryboard(name: "Home", bundle: nil).instantiateInitialViewController() as! HomeViewController
        window?.rootViewController = UINavigationController(rootViewController: viewController)
        window?.makeKeyAndVisible()
        return true
    }
    
}

