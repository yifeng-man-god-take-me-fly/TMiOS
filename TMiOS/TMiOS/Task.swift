//
//  Task.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/23.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import Foundation

class Task {
	var name: String
	var startTime, endTime: NSTimeInterval
	var description: String
	let founder: Person
	var participator: [Person]
	var rootMission: Mission!
	private var missionMap: [Person: [Mission]]
	
	init(name: String, startTime: NSTimeInterval, endTime: NSTimeInterval, founder: Person) {
		self.name = name
		self.startTime = startTime
		self.endTime = endTime
		self.founder = founder
		participator = [Person]()
		rootMission = nil
		missionMap = [Person: [Mission]]()
	}
	
	convenience init() {
		self.init(name: "[untitiled]", startTime: NSTimeInterval(0), endTime: NSTimeInterval(0), founder: Person())
	}
	
	func getPersonChargedMission(person: Person) -> [Mission]? {
		return missionMap[person]
	}
}