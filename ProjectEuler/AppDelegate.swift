//
//  AppDelegate.swift
//  ProjectEuler
//
//  Created by Matt Glover on 27/11/2016.
//  Copyright © 2016 Duchy Software. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

/// 	Problem 0001
//		let problem0001 = Problem0001()
//		let answer = problem0001.sumOfMultiples3And5Below(number: 1000)
//		print("Problem 0001: \(answer)")

/// 	Problem 0002
//		let problem0002 = Problem0002()
//		let answer = problem0002.sumOfEvenFibonacciNumbersLessThan(maxNumber: 4000000)
//		print("Problem 0002: \(answer)")

/// 	Problem 0003		
		let problem0003 = Problem0003()
		let number = 13195
		guard let answer = problem0003.largestPrimeFactorFor(number: number) else {
			print("No Prime Numbers for \(number)")
			return true
		}
		print("Problem 0003: \(answer)")


		return true
	}
}
