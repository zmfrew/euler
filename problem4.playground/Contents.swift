/*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
*/

/*
 Explanation:
 
 - First, we create an extension on Int that checks if the number is palindrome.
 - Next, we create our function to find the largest palindromic product between two 3-digits numbers.
 - We loop backwards from 999 to 700 by -2.
 - We return the first palindromic number we find because it will be the largest as we are looping backwards.
 - If we do not find a palindromic number, we return 0.
 */

extension Int {
    var isPalindrome: Bool {
        String(self) == String(String(self).reversed())
    }
}

func largestPalindromicNumber() -> Int {
    for i in stride(from: 999, to: 700, by: -2) {
        for j in stride(from: 999, to: 700, by: -2) {
            let product = i * j
            if product.isPalindrome {
                return product
            }
        }
    }
    
    return 0
}

largestPalindromicNumber() 
