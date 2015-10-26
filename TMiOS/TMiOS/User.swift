//
//  User.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/24.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import Foundation

class User: Person {
	var tasks: [Task]
	var missions: [Mission]
	
	static let instance = User.getUser()
	
	override init(name: String, headPortrait: String?) {
		self.tasks = [Task]()
		self.missions = [Mission]()
		super.init(name: name, headPortrait: headPortrait)
	}
	
	class func getUser() -> User {
		let plistFile = NSBundle.mainBundle().pathForResource("TaskData", ofType: "plist")
		let rootDictionary = NSDictionary(contentsOfFile: plistFile!)!
		let userDictionary = rootDictionary["User"] as! NSDictionary
		let user = User(name: userDictionary["name"] as! String, headPortrait: userDictionary["headPortrait"] as? String)
		for taskData in userDictionary["Tasks"] as! NSArray {
			let task = Task(name: taskData["name"] as! String, startTime: taskData["startTime"] as! NSDate, endTime: taskData["endTime"] as! NSDate, founder: Person.getPerson(taskData["founder"] as! String))
			for mission in taskData["missions"] as! NSArray {
				task.missions.append(getMission(mission as! NSDictionary))
			}
			user.tasks.append(task)
		}
		return user
	}
	
	class func getMission(missionData: NSDictionary) -> Mission {
		let mission = Mission(name: missionData["name"] as! String, manager: Person.getPerson(missionData["manager"] as! String), startTime: missionData["startTime"] as! NSDate, endTime: missionData["endTime"] as! NSDate)
		for childMission in missionData["childMission"] as! NSArray {
			mission.childMission.append(getMission(childMission as! NSDictionary))
		}
		return mission
	}
}

protocol UserDelegate {
	
}

protocol UserContainer {
	var user: User? { get set }
}