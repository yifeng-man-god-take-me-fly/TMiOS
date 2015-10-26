//
//  PersonalPage.swift
//  TMiOS
//
//  Created by Tidyzq on 15/10/25.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import UIKit

class PersonalPage: UIViewController {
	@IBOutlet weak var backButton: UIBarButtonItem!
	
	var person: Person = Person() {
		didSet {
			configureView()
		}
	}
	
	func configureView() {
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
}
