import ProjectDescription

let project = Project(
    name: "Bookmarks",
    targets: [
        .target(
            name: "Bookmarks",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.Bookmarks",
            infoPlist: .extendingDefault(with: [
                "UILaunchStoryboardName": "LaunchScreen.storyboard",
                // ✅ Add this block
                "UIApplicationSceneManifest": [
                    "UIApplicationSupportsMultipleScenes": false,
                    "UISceneConfigurations": [
                        "UIWindowSceneSessionRoleApplication": [
                            [
                                "UISceneConfigurationName": "Default Configuration",
                                "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate",
                            ]
                        ]
                    ],
                ],
            ]),
            buildableFolders: [
                "Bookmarks/Sources",
                "Bookmarks/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "BookmarksTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.BookmarksTests",
            infoPlist: .default,
            buildableFolders: [
                "Bookmarks/Tests"
            ],
            dependencies: [.target(name: "Bookmarks")]
        ),
    ]
)
