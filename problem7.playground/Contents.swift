/*
 By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 
 What is the 10 001st prime number?
 */

/*
 Explanation:
 
 - Create an extension on Int to determine if a number is prime.
 - Add prime numbers to an array until the count is 10,001.
 - Return the last number in the array.
 */
import Foundation

extension Int {
    var isPrime: Bool {
        guard self >= 2 else { return false }
        guard self != 2 else { return true }
        guard self % 2 != 0 else { return false }
        
        let square = Int(ceil(sqrt(Double(self))))
        
        for i in 2...square {
            if self % i == 0 { return false }
        }
        
        return true
    }
}

var primes = [Int]()
var number = 0
while primes.count < 10_001 {
    if number.isPrime {
        primes.append(number)
    }
    
    number += 1
}

print(primes.last!)
