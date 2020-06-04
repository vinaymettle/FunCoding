import UIKit

/* A new task for you!

You have to create a method, that corrects a given time string. There was a problem in addition, so many of the time strings are broken. Time-Format is european. So from "00:00:00" to "23:59:59".

Some examples:

"09:10:01" -> "09:10:01"
"11:70:10" -> "12:10:10"
"19:99:99" -> "20:40:39"
"24:01:01" -> "00:01:01"
*/
func correct(_ timeString: String?) -> String? {
    guard let time = timeString, time.isEmpty == false
        else { return timeString }

    let numbers = time.components(separatedBy: ":").compactMap({Int($0)})
    guard numbers.count == 3
        else { return nil }
    print(numbers[2])

    let timestamp = numbers[2] + numbers[1]*60 + numbers[0]*3600
    let hours = (timestamp/3600)%24
    let minutes = (timestamp/60)%60
    let seconds = timestamp % 60
    return "\(String(format: "%02d", hours)):\(String(format: "%02d",minutes)):\(String(format: "%02d",seconds))"
}

correct("001122")
correct("09:10:01")
correct("19:99:99")
