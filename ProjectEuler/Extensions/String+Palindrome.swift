extension String {
	func isPalindrome() -> Bool {
		var characters = self.characters

		while (characters.count > 1) {
			let beginningCharacter = characters.first
			let lastCharacter      = characters.last

			if (beginningCharacter != lastCharacter) {
				return false
			} else {
				characters.removeFirst()
				characters.removeLast()
			}
		}

		return true
	}
}
