//
//  AppState.swift
//  dcdsnotify
//
//  Created by Clara Hwang on 9/2/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit
class AppState {
	static var sharedInstance = AppState()
	var loggedIn = false
	
	
	func login(sender: AnyObject?)
	{
		
	}
	func logout(sender: UIViewController) {
		NSOperationQueue.mainQueue().addOperationWithBlock({
			CacheHelper.clearLogin()
		})
		
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let homeVC = storyboard.instantiateViewControllerWithIdentifier("Welcome") as! WelcomeViewController
		homeVC.login = (nil, nil)
		let window = UIApplication.sharedApplication().windows[0]
		sender.dismissViewControllerAnimated(false, completion: nil)
		window.rootViewController = homeVC
	}
}
