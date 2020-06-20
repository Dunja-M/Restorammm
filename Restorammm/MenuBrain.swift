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
	
	var items = [
		MenuItem(title: "Zdravo! Želite li plodove mora ili tora?", choice1: "Mora", choice2: "Tora", destination1: 1, destination2: 2),
		
		MenuItem(title: "Koje biste predjelo?", choice1: "Punjene lignje", choice2: "Kozice u belom sosu", destination1: 3, destination2: 4),
		MenuItem(title: "Koje biste predjelo?", choice1: "Jagnjeća  sarmica", choice2: "Pihtije", destination1: 5, destination2: 6),
		
		MenuItem(title: "Za glavno jelo vam nudimo:", choice1: "Brancina sa spanaćem i krompirom", choice2: "Školjke u sosu od belog vina", destination1: 7, destination2: 7),
		MenuItem(title: "Za glavno jelo vam nudimo:", choice1: "Jastoga na žaru", choice2: "Dimljenog lososa", destination1: 7, destination2: 7),
		MenuItem(title: "Za glavno jelo vam nudimo:", choice1: "Jagnjetinu ispod sača", choice2: "Karadjordjevu šniclu", destination1: 7, destination2: 7),
		MenuItem(title: "Za glavno jelo vam nudimo:", choice1: "Prasetinu", choice2: "Mešani roštilj", destination1: 7, destination2: 7),
		
		MenuItem(title: "A da se zasladite, nudimo:", choice1: "Čokoladni dezert", choice2: "Voćni dezert", destination1: 8, destination2: 9),
		
		MenuItem(title: "Od čokoladnih poslastica imamo:", choice1: "Čokoladne mafine sa višnjama", choice2: "Tortu sa tri vrste čokolade", destination1: 0, destination2: 0),
		MenuItem(title: "Od voćnih divotica imamo:", choice1: "Voćnu salatu na ražnjićima", choice2: "Palačinke u šatou sa voćnim smutijem", destination1: 0, destination2: 0)
	]
	
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
