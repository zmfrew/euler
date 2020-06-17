import Foundation

/*
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

 Find the sum of all the multiples of 3 or 5 below 1000.
 */

/*
 Solution Explanation:
 
 - We only want to consider multiples, so we can use stride here to advance from 0 to the upperbound by the multiple.
 - We do this for each number in numbers, which is more efficient than looping from 0 to the upperbound by 1.
 - Finally, we need to remove the duplicate values that were counted.
 */

func sumMultiples(_ numbers: Int..., below: Int) -> Int {
    var sum = numbers.reduce(into: 0) { sum, number in
        for i in stride(from: 0, to: below, by: number) {
            sum += i
        }
    }
    
    let duplicate = numbers.reduce(1, *)
    for i in stride(from: 0, to: below, by: duplicate) {
        sum -= i
    }
    
    return sum
}

assert(sumMultiples(3, 5, below: 10) == 23)
print(sumMultiples(3, 5, below: 1000))
