import ProjectDescription

let project = Project(
    name: "Bookmarks",
    targets: [
        .target(
            name: "Data",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "dev.tuist.Bookmarks.Data",
            buildableFolders: [
                "Bookmarks/Data"
            ],
            dependencies: [
                .target(name: "Domain")
            ]
        ),
        .target(
            name: "Presentation",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "dev.tuist.Bookmarks.Presentation",
            buildableFolders: [
                "Bookmarks/Presentation"
            ],
            dependencies: [
                .target(name: "Domain")
            ]
        ),
        .target(
            name: "Domain",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "dev.tuist.Bookmarks.Domain",
            buildableFolders: [
                "Bookmarks/Domain"
            ],
            dependencies: []
        ),
        .target(
            name: "Bookmarks",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.Bookmarks",
            infoPlist: .extendingDefault(with: [
                "UILaunchStoryboardName": "LaunchScreen.storyboard",
                "UIApplicationSceneManifest": [
                    "UIApplicationSupportsMultipleScenes": false,
                    "UISceneConfigurations": [
                        "UIWindowSceneSessionRoleApplication": [
                            [
                                "UISceneConfigurationName": "Default Configuration",
                                "UISceneDelegateClassName":
                                    "$(PRODUCT_MODULE_NAME).SceneDelegate",
                            ]
                        ]
                    ],
                ],
            ]),
            buildableFolders: [
                "Bookmarks/Sources",
                "Bookmarks/Resources",
            ],
            dependencies: [
                .target(name: "Domain"),
                .target(name: "Presentation"),
                .target(name: "Data"),
            ]
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
