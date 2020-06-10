import UIKit
/* You are given a string of n lines, each substring being n characters long: For example:

s = "abcd\nefgh\nijkl\nmnop"

We will study some transformations of this square of strings.

Symmetry with respect to the main diagonal: diag_1_sym (or diag1Sym or diag-1-sym)
diag_1_sym(s) => "aeim\nbfjn\ncgko\ndhlp"
Clockwise rotation 90 degrees: rot_90_clock (or rot90Clock or rot-90-clock)
rot_90_clock(s) => "miea\nnjfb\nokgc\nplhd"
selfie_and_diag1(s) (or selfieAndDiag1 or selfie-and-diag1) It is initial string + string obtained by symmetry with respect to the main diagonal.
s = "abcd\nefgh\nijkl\nmnop" -->
"abcd|aeim\nefgh|bfjn\nijkl|cgko\nmnop|dhlp"
or printed for the last:
selfie_and_diag1
abcd|aeim
efgh|bfjn
ijkl|cgko
mnop|dhlp
#Task:

Write these functions diag_1_sym, rot_90_clock, selfie_and_diag1
and

high-order function oper(fct, s) where

fct is the function of one variable f to apply to the string s (fct will be one of diag_1_sym, rot_90_clock, selfie_and_diag1)
#Examples:

s = "abcd\nefgh\nijkl\nmnop"
oper(diag_1_sym, s) => "aeim\nbfjn\ncgko\ndhlp"
oper(rot_90_clock, s) => "miea\nnjfb\nokgc\nplhd"
oper(selfie_and_diag1, s) => "abcd|aeim\nefgh|bfjn\nijkl|cgko\nmnop|dhlp"
Notes:
The form of the parameter fct in oper changes according to the language. You can see each form according to the language in "Your test cases".
It could be easier to take these katas from number (I) to number (IV)
Bash Note: The output strings should be separated by \r instead of \n. See "Sample Tests".*/

//func diag1Sym(_ s: String) -> String {
//    let arr = s.split(separator: "\n").map{Array($0)}
//    let n = arr.count-1
//    var newArr = arr
//
//    for i in 0...n{
//        for j in 0...n{
//            newArr [i][j] = arr[j][i]
//        }
//    }
//    let range = stride(from: n, through: 1, by: -1)
//    for i in range
//    {
//        newArr.insert(Array("\n"), at: i)
//    }
//    return newArr.compactMap{String($0)}.reduce("", +)
//}
//
//func rot90Clock(s: String) -> String {
//    let arr = s.split(separator: "\n").map{Array($0)}
//    var newArr = arr
//    let cnt = arr.count - 1
//
//    for i in 0...cnt{
//        for j in 0...cnt{
//            newArr[i][j] = arr[cnt-j][i]
//        }
//    }
//
//    for r in stride(from: cnt, through: 1, by: -1){
//        newArr.insert(Array("\n"), at: r)
//    }
//    return newArr.compactMap{String($0)}.reduce("", +)
//}
//
//func selfieAndDiag1(_ s: String) -> String {
//    let arr1 = s.split(separator: "\n")
//    let arr2 = diag1Sym(s).split(separator: "\n")
//    return zip(arr1, arr2).map{$0.0 + "|" + $0.1}.joined(separator: "\n")
//}
//
//func oper(_ op: (String) -> String, _ s: String) -> String {
//    return op(s)
//}


//func diag1Sym(_ s: String) -> String {
//    return transpose(stringTo2DArrayOfChars(s))
//        .map( { (a: [Character]) -> String in
//                    return String(a)
//              }
//        ).joined(separator: "\n")
//}
//func vertMirror(_ s: String) -> String {
//    return
//        s.characters
//        .split(separator: "\n")
//        .map(String.init)
//        .map( { (s: String) -> String in
//            return String(s.characters.reversed()) } )
//        .joined(separator: "\n")
//}
//func rot90Clock(s: String) -> String {
//    return vertMirror(diag1Sym(s))
//}
//func selfieAndDiag1(_ s: String) -> String {
//    var r: [String] = [String]()
//    let arr = s.characters.split(separator: "\n").map(String.init)
//    let arr1 = diag1Sym(s).characters.split(separator: "\n").map(String.init)
//    for (i, element) in arr.enumerated() {
//        r.append(element + "|" + arr1[i])
//    }
//    return r.joined(separator: "\n")
//}
//func oper(_ fcn: (String) -> String, _ s: String) -> String {
//    return fcn(s)
//}

func diag1Sym(_ entry: String) -> String {
    let lines = entry.components(separatedBy: "\n")
    var result = [String]()
    for index in lines.indices {
        let transformed = lines.map { $0[$0.index($0.startIndex, offsetBy: index)] }
        result.append(String(transformed))
    }
    return result.joined(separator: "\n")
}

func rot90Clock(_ entry: String) -> String {
    let reversedLines = entry.components(separatedBy: "\n").reversed().joined(separator: "\n")
    return diag1Sym(reversedLines)
}

func selfieAndDiag1(_ entry: String) -> String {
    let lines = entry.components(separatedBy: "\n")
    let diagLines = diag1Sym(entry).components(separatedBy: "\n")
    return zip(lines, diagLines).map { "\($0.0)|\($0.1)" }.joined(separator: "\n")
}

func oper(_ execute: (String) -> String, _ entry: String) -> String {
    return execute(entry)
}
