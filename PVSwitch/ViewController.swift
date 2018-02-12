//
//  ViewController.swift
//  PVSwitch
//
//  Created by Pulkit Vaid on 08/02/18.
//  Copyright © 2018 Pulkit Vaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let switchByCode = PVSwitch()
	@IBOutlet var containerView: UIView!

	@IBOutlet var disabledSwitch: PVSwitch!

	override func viewDidLoad() {
		super.viewDidLoad()
		self.setupSwitch()

		disabledSwitch.isEnabled = false
	}

	private func setupSwitch() {

		//Customize the Properties if the Switch is added by Code

		switchByCode.isOn = true
		
		switchByCode.isBounceEnabled = false		

		switchByCode.thumbOnTintColor = .white
		switchByCode.trackOnTintColor = .green

		switchByCode.thumbOffTintColor = .darkGray
		switchByCode.trackOffTintColor = .lightGray

		switchByCode.addTarget(self, action: #selector(ViewController.codeSwitchAction(sender:)), for: .valueChanged)
		containerView.addSubview(switchByCode)		
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()

		//Make sure to set the frame of the switch if the Switch is added by Code
		switchByCode.frame = containerView.bounds
	}

	@IBAction func storyBoardSwitchAction(_ sender: PVSwitch) {
		print("Storyboard Switch Toggled : \(sender.isOn)")
	}

	@objc private func codeSwitchAction(sender: PVSwitch) {
		print("Code Switch Toggled : \(sender.isOn)")
	}
}

