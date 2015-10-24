//
//  Person.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/23.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import Foundation

class Person {
	let name: String
	let headPortrait: String?
	
	init(name: String, headPortrait: String?) {
		self.name = name
		self.headPortrait = headPortrait
	}
	
	convenience init() {
		self.init(name: "[untitled]", headPortrait: nil)
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