//
//  SettingsCell.swift
//  dcdsnotify
//
//  Created by Peter J. Lee on 9/8/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
	var title: String!
    var action: ClosureVoid!
	@IBOutlet weak var settingButton: UIButton!
	
	
	@IBAction func onButtonTap(sender: AnyObject)
	{
        action()
//		let window = UIApplication.sharedApplication().windows[0]
//		window.rootViewController?.performSegueWithIdentifier(segueID, sender: self)
	}
}
