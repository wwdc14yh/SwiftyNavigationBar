//
//  AppDelegate.swift
//  Example
//
//  Created by y H on 2024/6/11.
//

import UIKit
import SwiftyNavigationBar

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        // 设置全局样式
        Style.isWhiteBarStyle = false
        Style.shadowImageAlpha = 1
        Style.shadowContent = .image(UIImage(resource: .navShadow))
        
        // settingNav
        let settingNav = UINavigationController(rootViewController: SettingViewController(), preference: { (style) in
            style.backgroundEffect = .blur(.light)
        })
        settingNav.tabBarItem = UITabBarItem(title: "Setting", image: nil, selectedImage: nil)
        
        // tabBar
        let tabBar = UITabBarController()
        tabBar.viewControllers = [settingNav]
        
        window.backgroundColor = .white
        window.rootViewController = tabBar
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}

