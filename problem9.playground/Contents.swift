/*
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
 a^2 + b^2 = c^2
 For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.
 */

/*
 Explanation:
    
 - Create helper computed variables for squaring a number and computing the square root.
 - Create helper method to check if the three numbers fit the problem's constraints.
 - Divide the number by 2.
 - Check each combination of a and b for 1 to half the number.
 - Compute c for each combination of a and b.
 - If any of those combinations are a special pythagorean triplet, return the product of the 3 numbers.
 */
import Foundation

extension Int {
    var squared: Int {
        Int(floor(pow(Double(self), 2)))
    }
    
    var squareRoot: Int {
        Int(floor(sqrt(Double(self))))
    }
    
    var pythagoreanTripletProduct: Int? {
        let arr = Array(1...self/2)
        
        for a in arr {
            for b in arr {
                let c = (a.squared + b.squared).squareRoot
                
                if isSpecialPythagoreanTriplet(a: a, b: b, c: c) {
                    return a * b * c
                }
            }
        }
        
        return nil
    }
    
    func isSpecialPythagoreanTriplet(a: Int, b: Int, c: Int) -> Bool {
        guard a < b, b < c else { return false }
        
        return (a + b + c) == self && (a.squared + b.squared) == c.squared
    }
}

1000.pythagoreanTripletProduct
