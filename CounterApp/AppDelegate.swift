//
//  AppDelegate.swift
//  CounterApp
//
//  Created by 김동준 on 2021/03/05.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let counterVC = CounterViewController()
        let reactor = CounterReactor()
        counterVC.reactor = reactor
        window?.rootViewController = counterVC
        
        return true
    }


}

