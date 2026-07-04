//
//  SceneDelegate.swift
//  Bookmarks
//
//  Created by Erkhaan  on 04.07.2026.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        print("✅ Scene connected!")
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        let rootVC = ViewController()  // we'll create this next
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }
}
