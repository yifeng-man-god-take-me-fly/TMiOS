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
	var priority: Int
	var start: NSTimeInterval
	var end: NSTimeInterval
	var complite: Bool
	var childMission: [Mission]
	
	
}