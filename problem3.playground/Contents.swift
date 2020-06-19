import Foundation

/*
 The prime factors of 13195 are 5, 7, 13 and 29.

 What is the largest prime factor of the number 600851475143 ?
 */
    
/*
 Solution Explanation:
 
 - Using the Sieve of Eratothenes, we mark all numbers as true for being prime.
 - As we loop from the number to its square root, which is the highest potential factor, we mark all factors of the current iteration as false.
 - Finally, we check if the current prime number is a factor and if so, select the maximum between it and the current max.
 */

// Sieve of Eratosthenes
extension Int {
    var largestPrimeFactor: Int {
        guard self > 1 else { return 0 }
        let squareRoot = Int(floor(sqrt(Double(self))))
        var sieve = [Bool](repeating: true, count: squareRoot)
        sieve[0] = false
        sieve[1] = false
        var max = 0
        
        for i in 2..<squareRoot {
            if sieve[i] == true {
                for multiple in stride(from: i * i, to: squareRoot, by: i) {
                    sieve[multiple] = false
                }
                
                if self % i == 0, i > max {
                    max = i
                }
            }
        }
        
        return max
    }
}

13195.largestPrimeFactor // 29
600851475143.largestPrimeFactor
