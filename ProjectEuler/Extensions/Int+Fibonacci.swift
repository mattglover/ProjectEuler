extension Int {

	func fibonacciNumbers() -> [Int] {

		var fibonacciNumbers = [Int]()

		var previousFibonacciNumber = 0
		var nextFibonacciNumber = 1

		while (previousFibonacciNumber <= self) {
			let sum = previousFibonacciNumber + nextFibonacciNumber
			previousFibonacciNumber = nextFibonacciNumber
			nextFibonacciNumber = sum

			if (sum <= self) {
				fibonacciNumbers.append(sum)
			}
		}

		return fibonacciNumbers
	}

}
