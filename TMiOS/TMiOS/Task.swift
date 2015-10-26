//
//  Task.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/23.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import Foundation
import UIKit

class Task {
	var name: String
	var startTime: NSDate
	var endTime: NSDate
	var description: String
	var color: UIColor
	let founder: Person
	var participator: [Person]
	var missions: [Mission]
	private var missionMap: [Person: [Mission]]
	
	init(name: String, startTime: NSDate, endTime: NSDate, founder: Person) {
		self.name = name
		self.startTime = startTime
		self.endTime = endTime
		self.description = ""
		self.color = UIColor.redColor()
		self.founder = founder
		self.participator = [Person]()
		self.missions = [Mission]()
		self.missionMap = [Person: [Mission]]()
	}
	
	convenience init() {
		self.init(name: "[untitiled]", startTime: NSDate(), endTime: NSDate(), founder: Person())
	}
	
	func getPersonChargedMission(person: Person) -> [Mission]? {
		return missionMap[person]
	}
	
	func addMission(addMission add: Mission, rootMission: Mission?) {
		if let root = rootMission {
			root.addChildMission(add)
		} else {
			missions.append(add)
		}
		missionMap[add.manager]?.append(add)
	}
}