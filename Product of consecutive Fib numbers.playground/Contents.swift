import UIKit

/*The Fibonacci numbers are the numbers in the following integer sequence (Fn):

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...

such as F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.

Given a number, say prod (for product), we search two Fibonacci numbers F(n) and F(n+1) verifying

F(n) * F(n+1) = prod.

Your function productFib takes an integer (prod) and returns an array: [F(n), F(n+1), true] or {F(n), F(n+1), 1} or (F(n), F(n+1), True)
depending on the language if F(n) * F(n+1) = prod.

If you don't find two consecutive F(m) verifying F(m) * F(m+1) = prodyou will return [F(m), F(m+1), false] or {F(n), F(n+1), 0} or (F(n), F(n+1), False)
F(m) being the smallest one such as F(m) * F(m+1) > prod.
Some Examples of Return: (depend on the language)

productFib(714) # should return (21, 34, true),
                # since F(8) = 21, F(9) = 34 and 714 = 21 * 34

productFib(800) # should return (34, 55, false),
                # since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55
-----
productFib(714) # should return [21, 34, true],
productFib(800) # should return [34, 55, false],
-----
productFib(714) # should return {21, 34, 1},
productFib(800) # should return {34, 55, 0},
-----
productFib(714) # should return {21, 34, true},
productFib(800) # should return {34, 55, false}, */

// Soltion - 1
//func fibonacci(_ i: UInt64) -> UInt64 {
//    var a: UInt64 = 1
//    var b: UInt64 = 1
//    guard i > 1 else { return a }
//
//    (2...i).forEach { _ in
//        (a, b) = (a + b, a)
//    }
//    return a
//}
//
//fibonacci(3)
//fibonacci(4)
//
//func productFib(_ prod : UInt64) -> (UInt64,UInt64,Bool) {
//    var (a, b): (UInt64, UInt64) = (1, 2)
//    while prod > fibonacci(a) * fibonacci(b){
//        a = b
//        b = b + 1
//        let c = fibonacci(a)
//        let d = fibonacci(b)
//        if prod == c * d{
//            return (c, d , prod == c * d)
//        }
//    }
//    return (fibonacci(a), fibonacci(b), false)
//}

// solution - 2
func productFib(_ prod: UInt64) -> (UInt64, UInt64, Bool) {
    var m: UInt64 = 0, n: UInt64 = 1
    while m * n < prod { (m, n) = (n, m + n) }
    return (m, n, m * n == prod)
}

print(productFib(74049690))
