//
//  SceneDelegate.swift
//  MultipleWindowMania
//
//  Created by Tomato on 2022/12/30.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	var window: UIWindow?
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let scene = (scene as? UIWindowScene) else {
			return
		}
		
		let window = UIWindow(windowScene: scene)
		let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
		window.rootViewController = UINavigationController(rootViewController: viewController)
		self.window = window
		window.makeKeyAndVisible()
	}
}

