import UIKit

/* Challenge:

Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.

Example:

Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].  */

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    guard !arr.isEmpty else{
        return []
    }

    return arr.reduce([], +).sorted(by: <)
}

flattenAndSort([[Int]]())
flattenAndSort([[Int](), []])
flattenAndSort([[], [1]])
flattenAndSort([[], [], [], [2], [], [1]])
flattenAndSort([[3, 2, 1], [7, 9, 8], [6, 4, 5]])
flattenAndSort([[1, 3, 5], [100], [2, 4, 6]])
flattenAndSort([[111, 999], [222], [333], [444], [888], [777], [666], [555]])
