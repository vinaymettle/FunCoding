import UIKit

/* Given a number, return a string with dash'-'marks before and after each odd integer, but do not begin or end the string with a dash mark.

Ex:

dashatize(274) -> '2-7-4'
dashatize(6815) -> '68-1-5'
 */

// Solution - 1
//func dashatize(_ number: Int) -> String{
//
//    let numbrString = String(number).compactMap{$0.wholeNumberValue}
//    var numberIterator = numbrString.makeIterator()
//    var newString = ""
//
//    while let num = numberIterator.next(){
//       if num % 2 == 0  {
//            newString.append("\(num)")
//        } else {
//            newString.append("-\(num)-")
//        }
//    }
//
//    if newString.first == "-" && newString.last == "-"{
//        return newString.dropFirst().dropLast().replacingOccurrences(of: "--", with: "-")
//    }else if newString.first == "-"{
//        return newString.dropFirst().replacingOccurrences(of: "--", with: "-")
//    }else if newString.last == "-"{
//        return newString.dropLast().replacingOccurrences(of: "--", with: "-")
//    }
//
//    return newString.replacingOccurrences(of: "--", with: "-")
//}
 


// Solution - 2
func dashatize(_ number: Int) -> String {
    let number = number < 0 ? -number : number
    let stringArray =  String(number).map {Int(String($0))! % 2 == 0 ? "\($0)" : "-\($0)-" }
    var stringed = stringArray.joined(separator: "")
    if stringed.first == "-" { stringed.remove(at: stringed.startIndex) }
    if stringed.last == "-" { stringed = String(stringed.dropLast()) }
    return stringed.replacingOccurrences(of: "--", with: "-")
}

print(dashatize(274))
print(dashatize(6815))
print(dashatize(5311))
print(dashatize(86320))
print(dashatize(974302))
print(dashatize(-1))
