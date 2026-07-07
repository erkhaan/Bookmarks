//
//  SceneDelegate.swift
//  Bookmarks
//
//  Created by Erkhaan  on 04.07.2026.
//

import Domain
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        let rootVC = BookRecordsAssembly.makeRootViewController()
        let nc = UINavigationController(rootViewController: rootVC)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
    }
}
