extension Int {
	func isPalindrome() -> Bool {
		var digits = String(self).characters.map { Int(String($0))! }

		while (digits.count > 1) {
			let beginningDigit = digits.first
			let lastDigit      = digits.last

			if (beginningDigit != lastDigit) {
				return false
			} else {
				digits.removeFirst()
				digits.removeLast()
			}
		}

		return true
	}
}
