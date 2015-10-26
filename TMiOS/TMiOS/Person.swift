//
//  Person.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/23.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import Foundation

class Person {
	var name: String
	var headPortrait: String?
	static var personMap = [String: Person]()
	
	init(name: String, headPortrait: String?) {
		self.name = name
		self.headPortrait = headPortrait
		Person.personMap[name] = self
	}
	
	convenience init() {
		self.init(name: "[untitled]", headPortrait: nil)
	}
	
	class func getPerson(name: String) -> Person {
		if let person = personMap[name] {
			return person
		} else {
			return Person(name: name, headPortrait: nil)
		}
	}
}

func ==(a: Person, b: Person) -> Bool {
	return a.name == b.name
}

extension Person: Equatable {
}

extension Person: Hashable {
	var hashValue: Int {
		return name.hashValue
	}
}