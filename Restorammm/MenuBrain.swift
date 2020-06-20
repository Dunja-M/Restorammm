//
//  MenuBrain.swift
//  Restorammm
//
//  Created by Dunja Maksimovic on 6/19/20.
//  Copyright © 2020 Dunja Maksimovic. All rights reserved.
//

import Foundation

class MenuBrain {
	
	var stepNumber = 0
	
	var items = [MenuItem(title: "Zdravo! Želite li plodove mora ili tora?", choice1: "Mora", choice2: "Tora", destination1: 1, destination2: 2)]
	
	func getLabelText() -> String {
		
		return items[stepNumber].title
	}
	
	func getChoice1() -> String {
		
		return items[stepNumber].choice1
	}
	
	func getChoice2() -> String {
		
		return items[stepNumber].choice2
	}
	
	func checkAnswer(currentAnswer: String?) {
		
		let menuItem = items[stepNumber]
		
		if currentAnswer == menuItem.choice1 {
			stepNumber = menuItem.destination1
			
		} else if currentAnswer == menuItem.choice2 {
			stepNumber = menuItem.destination2
		}
	}
}
