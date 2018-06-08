//
//  AppDelegate.swift
//  RNDemo
//
//  Created by Kay Butter on 10.05.18.
//  Copyright © 2018 Freenet.de GmbH. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        guard let javascriptFileURL = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil) else {
            fatalError("Couldn't find root js file")
        }

        let rootView: RCTRootView = RCTRootView(bundleURL: javascriptFileURL,
                                                moduleName: "RNDemo",
                                                initialProperties: nil,
                                                launchOptions: launchOptions)

        rootView.backgroundColor = .white

        let viewController = UIViewController()
        viewController.view = rootView

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = viewController

        window?.makeKeyAndVisible()

        return true
    }
}
