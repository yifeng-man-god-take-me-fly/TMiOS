//
//  Mission.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/24.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import Foundation

enum Priority: Int {
	case unset = 0
	case normal = 1
	case high = 2
	case emergency = 3
}

class Mission {
	var name: String
	var priority: Priority
	let manager: Person
	var startTime: NSDate
	var endTime: NSDate
	var complite: Bool
	var childMission: [Mission]
	
	init(name: String, manager: Person, startTime: NSDate, endTime: NSDate) {
		self.name = name
		self.priority = Priority.unset
		self.manager = manager
		self.startTime = startTime
		self.endTime = endTime
		self.complite = false
		childMission = [Mission]()
	}
	
	convenience init() {
		self.init(name: "[untitled]", manager: Person(), startTime: NSDate(), endTime: NSDate())
	}
	
	func addChildMission(child: Mission) {
		childMission.append(child)
	}
}