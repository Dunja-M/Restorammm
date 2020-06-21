//
//  ViewController.swift
//  Restorammm
//
//  Created by Dunja Maksimovic on 6/18/20.
//  Copyright © 2020 Dunja Maksimovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var choice1Button: UIButton!
	@IBOutlet weak var choice2Button: UIButton!
	
	var menuBrain = MenuBrain()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupButtons()
		updateUI()
	}
	
	func setupButtons() {
		
		choice1Button.layer.cornerRadius = choice1Button.frame.height / 2
		choice2Button.layer.cornerRadius = choice2Button.frame.height / 2
	}
	
	func updateUI() {
		
		questionLabel.text = menuBrain.getLabelText()
		choice1Button.setTitle(menuBrain.getChoice1(), for: .normal)
		choice2Button.setTitle(menuBrain.getChoice2(), for: .normal)
	}

	@IBAction func choiceAction(_ sender: UIButton) {
		
		menuBrain.checkAnswer(currentAnswer: sender.titleLabel?.text)
		updateUI()
	}
	
}

