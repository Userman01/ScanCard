//
//  SceneDelegate.swift
//  ScanCard
//
//  Created by Петр Постников on 20.02.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ScanCardBuilder().build()
        window.makeKeyAndVisible()
        self.window = window
    }
}
