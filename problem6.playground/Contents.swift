/*
 The sum of the squares of the first ten natural numbers is,
 1^2 + 2^2 + ... + 10^2 = 385
 The square of the sum of the first ten natural numbers is,
 (1 + 2 + ... + 10)^2 = 55^2 = 3025
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640
 3025 − 385 = 2640

 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 */

/*
 Explanation:
 
 - First, compute the sumOfSquares with reduce.
 - Secondly, compute the squareOfSum using reduce then squaring the sum.
 - Finally, subtract the two numbers.
 */

extension Int {
    var sumOfSquares: Int {
        (1...self).reduce(0) { $0 + $1 * $1 }
    }
    
    var squareOfSum: Int {
        let sum = (1...self).reduce(0, +)
        return sum * sum
    }
}

10.squareOfSum - 10.sumOfSquares // 2640
100.squareOfSum - 100.sumOfSquares
