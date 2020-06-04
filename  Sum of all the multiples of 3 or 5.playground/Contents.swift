import UIKit
/*
Your task is to write function findSum.

Upto and including n, this function will return the sum of all multiples of 3 and 5.

For example:

findSum(5) should return 8 (3 + 5)

findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)
 */

func findSum(_ n: Int) -> Int {
    return (1...n).filter{$0.isMultiple(of: 3) || $0.isMultiple(of: 5)}.reduce(0, +)
}

findSum(1000)

