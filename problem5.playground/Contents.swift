/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 */

/*
 Explanation:
 
 - First, we create a function to find the greatest common divisor of two elements.
 - Next, we compute the least common multiple.
 - Finally, we find the least common multiple of the entire array by comparing two elements at a time.
 */

func gcd(_ a: Int, _ b: Int) -> Int {
    b == 0 ? a : gcd(b, a % b)
}

func leastCommonMultiple(_ a: Int, _ b: Int) -> Int {
    a * b / gcd(a, b)
}

extension Int {
    var lcm: Int {
        let arr = Array(1...self)
        
        return arr.reduce(1) { previous, current in
            return leastCommonMultiple(previous, current)
        }
    }
}

10.lcm // 2520
20.lcm
