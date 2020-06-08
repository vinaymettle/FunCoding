import UIKit

/* Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

 twoSum [1, 2, 3] 4 === (0, 2)
 */

class Solution {
    static func twosum(numbers: [Double], target: Double) -> [Int] {
        var arr: [Int] = []
        for i in numbers.enumerated(){
            for j in 0..<numbers.count where j != i.offset{
                if i.element + numbers[j] == target{
                    arr.append(i.offset)
                }
            }
        }
        return arr
    }
}

//Solution.twosum(numbers: [1,2,3], target: 4)

//func twoSum1(nums: [Int]?, _ target: Int) -> [Int]? {
//        guard let nums = nums, nums.count > 1 else { return nil }
//        var res = [Int]()
//        let count = nums.count
//        var map = [Int: Int]()
//        for i in 0..<count {
//            map[nums[i]] = i
//        }
//    print(map)
//        for i in 0..<count {
//            let value = target - nums[i]
//            if let index = map[value], index != i {
//                res.append(i)
//                res.append(index)
//            }
//        }
//        return res
//}

//
//func twosum(numbers: [Double], target: Double) -> [Int] {
//    var arr: [Int] = []
//    var startIndex = 0
//    var lastIndex = numbers.count - 1
//    while startIndex < lastIndex {
//        let sumOfItems = numbers[startIndex] + numbers [lastIndex]
//        if target == sumOfItems{
//            arr += [startIndex, lastIndex]
//            print(arr)
//            return arr
//        }else if sumOfItems < target {
//            startIndex += 1
//        }else if sumOfItems > target{
//            lastIndex -= 1
//        }
//    }
//    return []
//}
//
//twosum(numbers:[1,54,24,35], target: 59)

//class Solution {
//    static func twosum(numbers: [Double], target: Double) -> [Int] {
//  var arr: [Int] = []
//    var startIndex = 0
//    var lastIndex = numbers.count - 1
//    while startIndex < lastIndex {
//        let sumOfItems = numbers[startIndex] + numbers [lastIndex]
//        if target == sumOfItems{
//            arr += [startIndex, lastIndex]
//            print(arr)
//            return arr
//        }else if sumOfItems < target {
//            startIndex += 1
//        }else if sumOfItems > target{
//            lastIndex -= 1
//        }
//    }
//    return []
//}
//}

Solution.twosum(numbers: [1,54,24,35], target: 59)


