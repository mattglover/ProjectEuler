extension Int {
	
 	/// ---- Check out 'the better approach' .. (Idea) Run a performance test to check it's more efficient
	func isPrimeNumber() -> Bool {

		if self <= 2 {
			return false
		}

		for divisor in 2..<self {
			if self % divisor == 0 {
				return false
			}
		}
		return true
	}

	func primeNumbers() -> [Int] {
		var primeNumbers = [Int]()
		for num in 2..<self {
			if num.isPrimeNumber() {
				primeNumbers.append(num)
			}
		}

		return primeNumbers
	}
}
