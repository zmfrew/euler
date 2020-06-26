/*
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

 Find the sum of all the primes below two million.
 */

/*
 Explanation:
 
 - Use Sieve of Eratosthenes then sum all `true` elements in the array.
 */

extension Int {
    var sumOfPrimesBelow: Int {
        guard self > 1 else { return 0 }
        
        var sieve = [Bool](repeating: true, count: self)
        sieve[0] = false
        sieve[1] = false
        
        for number in 2..<self {
            if sieve[number] == true {
                for multiple in stride(from: number * number, to: sieve.count, by: number) {
                    sieve[multiple] = false
                }
            }
        }
        
        return sieve.enumerated().reduce(0) { sum, arg2 in
            let (index, element) = arg2
            
            if element == true {
                return sum + index
            } else {
                return sum
            }
        }
    }
}
10.sumOfPrimesBelow // 17
2_000_000.sumOfPrimesBelow
