//
//  SceneDelegate.swift
//  Planner
//
//  Created by Bryam Soto Ñahui on 7/4/20.
//  Copyright © 2020 Speira. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: LandmarkList())
            self.window = window
            window.makeKeyAndVisible()
        }
    }

}


struct SceneDelegate_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
